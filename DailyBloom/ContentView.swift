import SwiftUI

struct ContentView: View {
    @State private var quote = QuoteStore.todayQuote()
    @State private var dateLabel = QuoteStore.todayDateString()
    @State private var isLiked = false
    @State private var appeared = false
    @State private var heartScale: CGFloat = 1.0
    @State private var showShareSheet = false

    let roseGold     = Color(red: 0.722, green: 0.451, blue: 0.451)
    let deepBrown    = Color(red: 0.220, green: 0.149, blue: 0.122)
    let softBrown    = Color(red: 0.502, green: 0.380, blue: 0.349)
    let warmCream    = Color(red: 0.996, green: 0.976, blue: 0.957)
    let cardWhite    = Color(red: 1.000, green: 1.000, blue: 1.000)
    let dividerColor = Color(red: 0.722, green: 0.451, blue: 0.451).opacity(0.25)

    var body: some View {
        ZStack {
            warmCream.ignoresSafeArea()

            LinearGradient(
                colors: [roseGold.opacity(0.07), Color.clear],
                startPoint: .top,
                endPoint: .center
            )
            .ignoresSafeArea()

            VStack(spacing: 0) {
                Spacer()

                HStack(spacing: 12) {
                    Rectangle().fill(roseGold.opacity(0.5)).frame(width: 36, height: 1)
                    Text(dateLabel)
                        .font(.system(size: 11, weight: .regular, design: .monospaced))
                        .foregroundColor(roseGold).kerning(2)
                    Rectangle().fill(roseGold.opacity(0.5)).frame(width: 36, height: 1)
                }

                Text("TODAY'S BLOOM")
                    .font(.system(size: 9, weight: .medium, design: .monospaced))
                    .foregroundColor(softBrown.opacity(0.6)).kerning(4)
                    .padding(.top, 10).padding(.bottom, 28)

                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(cardWhite)
                        .shadow(color: roseGold.opacity(0.12), radius: 30, x: 0, y: 8)
                        .shadow(color: Color.black.opacity(0.04), radius: 8, x: 0, y: 2)

                    VStack {
                        RoundedRectangle(cornerRadius: 3)
                            .fill(LinearGradient(
                                colors: [roseGold.opacity(0.7), roseGold.opacity(0.3)],
                                startPoint: .leading, endPoint: .trailing))
                            .frame(height: 4)
                            .padding(.horizontal, 40).padding(.top, 16)
                        Spacer()
                    }

                    VStack(spacing: 0) {
                        HStack {
                            Text("\u{201C}")
                                .font(.system(size: 64, weight: .thin, design: .serif))
                                .foregroundColor(roseGold.opacity(0.5)).frame(height: 44)
                            Spacer()
                        }
                        .padding(.leading, 12).padding(.top, 28).padding(.bottom, 4)

                        Text(quote.text)
                            .font(.system(size: 22, weight: .light, design: .serif))
                            .foregroundColor(deepBrown)
                            .multilineTextAlignment(.center).lineSpacing(8)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(.horizontal, 8)

                        HStack {
                            Spacer()
                            Text("\u{201D}")
                                .font(.system(size: 64, weight: .thin, design: .serif))
                                .foregroundColor(roseGold.opacity(0.5)).frame(height: 38)
                        }
                        .padding(.trailing, 12).padding(.top, 2)

                        Rectangle().fill(dividerColor).frame(height: 1)
                            .padding(.horizontal, 32).padding(.top, 16)

                        HStack(spacing: 8) {
                            Circle().fill(roseGold.opacity(0.4)).frame(width: 5, height: 5)
                            Text(quote.author)
                                .font(.system(size: 14, weight: .regular, design: .serif))
                                .foregroundColor(softBrown).italic().kerning(0.5)
                            Circle().fill(roseGold.opacity(0.4)).frame(width: 5, height: 5)
                        }
                        .padding(.top, 16).padding(.bottom, 28)
                    }
                    .padding(.horizontal, 28)
                }
                .padding(.horizontal, 24)

                Text(quote.category)
                    .font(.system(size: 9, weight: .medium, design: .monospaced))
                    .foregroundColor(roseGold).kerning(3)
                    .padding(.horizontal, 16).padding(.vertical, 6)
                    .background(roseGold.opacity(0.08))
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(roseGold.opacity(0.25), lineWidth: 1))
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .padding(.top, 20)

                HStack(spacing: 52) {
                    Button(action: handleLike) {
                        VStack(spacing: 6) {
                            Text(isLiked ? "♥" : "♡")
                                .font(.system(size: 24))
                                .foregroundColor(isLiked ? roseGold : softBrown.opacity(0.6))
                                .scaleEffect(heartScale)
                            Text("Cherish")
                                .font(.system(size: 9, weight: .regular, design: .monospaced))
                                .foregroundColor(softBrown.opacity(0.5)).kerning(2)
                        }
                    }
                    Button(action: { showShareSheet = true }) {
                        VStack(spacing: 6) {
                            Text("↗").font(.system(size: 24)).foregroundColor(softBrown.opacity(0.6))
                            Text("Share")
                                .font(.system(size: 9, weight: .regular, design: .monospaced))
                                .foregroundColor(softBrown.opacity(0.5)).kerning(2)
                        }
                    }
                }
                .padding(.top, 32)

                Text("A new bloom every morning 🌸")
                    .font(.system(size: 13, weight: .light, design: .serif))
                    .foregroundColor(softBrown.opacity(0.4)).italic()
                    .padding(.top, 28)

                Spacer()
            }
            .opacity(appeared ? 1 : 0)
            .offset(y: appeared ? 0 : 24)
        }
        .onAppear {
            withAnimation(.easeOut(duration: 1.0).delay(0.2)) { appeared = true }
        }
        .sheet(isPresented: $showShareSheet) {
            ShareSheet(items: ["\"\(quote.text)\"\n— \(quote.author)\n\nShared from Daily Bloom 🌸"])
        }
        .preferredColorScheme(.light)
    }

    func handleLike() {
        isLiked.toggle()
        withAnimation(.spring(response: 0.3, dampingFraction: 0.4)) { heartScale = 1.4 }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.15) {
            withAnimation(.spring(response: 0.3, dampingFraction: 0.6)) { heartScale = 1.0 }
        }
        let generator = UIImpactFeedbackGenerator(style: .light)
        generator.impactOccurred()
    }
}

struct ShareSheet: UIViewControllerRepresentable {
    let items: [Any]
    func makeUIViewController(context: Context) -> UIActivityViewController {
        UIActivityViewController(activityItems: items, applicationActivities: nil)
    }
    func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {}
}

#Preview { ContentView() }
