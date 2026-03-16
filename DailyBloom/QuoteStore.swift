import Foundation

struct Quote: Identifiable {
    let id = UUID()
    let text: String
    let author: String
    let category: String
}

struct QuoteStore {
    static let quotes: [Quote] = [
        Quote(text: "The secret of getting ahead is getting started.", author: "Mark Twain", category: "ACTION"),
        Quote(text: "You are never too old to set another goal or to dream a new dream.", author: "C.S. Lewis", category: "DREAMS"),
        Quote(text: "It does not matter how slowly you go as long as you do not stop.", author: "Confucius", category: "PERSEVERANCE"),
        Quote(text: "Believe you can and you're halfway there.", author: "Theodore Roosevelt", category: "BELIEF"),
        Quote(text: "The only way to do great work is to love what you do.", author: "Steve Jobs", category: "PURPOSE"),
        Quote(text: "In the middle of every difficulty lies opportunity.", author: "Albert Einstein", category: "RESILIENCE"),
        Quote(text: "The future belongs to those who believe in the beauty of their dreams.", author: "Eleanor Roosevelt", category: "DREAMS"),
        Quote(text: "You miss 100% of the shots you don't take.", author: "Wayne Gretzky", category: "COURAGE"),
        Quote(text: "Whether you think you can or you think you can't, you're right.", author: "Henry Ford", category: "MINDSET"),
        Quote(text: "The mind is everything. What you think you become.", author: "Buddha", category: "MINDSET"),
        Quote(text: "Strive not to be a success, but rather to be of value.", author: "Albert Einstein", category: "PURPOSE"),
        Quote(text: "You can never cross the ocean until you have the courage to lose sight of the shore.", author: "Christopher Columbus", category: "COURAGE"),
        Quote(text: "Either you run the day, or the day runs you.", author: "Jim Rohn", category: "ACTION"),
        Quote(text: "The best time to plant a tree was 20 years ago. The second best time is now.", author: "Chinese Proverb", category: "ACTION"),
        Quote(text: "Spread love everywhere you go. Let no one ever come to you without leaving happier.", author: "Mother Teresa", category: "KINDNESS"),
        Quote(text: "When you reach the end of your rope, tie a knot in it and hang on.", author: "Franklin D. Roosevelt", category: "RESILIENCE"),
        Quote(text: "The only impossible journey is the one you never begin.", author: "Tony Robbins", category: "ACTION"),
        Quote(text: "If you look at what you have in life, you'll always have more.", author: "Oprah Winfrey", category: "GRATITUDE"),
        Quote(text: "Darkness cannot drive out darkness; only light can do that.", author: "Martin Luther King Jr.", category: "LOVE"),
        Quote(text: "Do not go where the path may lead, go instead where there is no path and leave a trail.", author: "Ralph Waldo Emerson", category: "COURAGE"),
        Quote(text: "The greatest glory in living lies not in never falling, but in rising every time we fall.", author: "Nelson Mandela", category: "RESILIENCE"),
        Quote(text: "In the end, it's not the years in your life that count. It's the life in your years.", author: "Abraham Lincoln", category: "PRESENCE"),
        Quote(text: "Never let the fear of striking out keep you from playing the game.", author: "Babe Ruth", category: "COURAGE"),
        Quote(text: "Life is either a daring adventure or nothing at all.", author: "Helen Keller", category: "ADVENTURE"),
        Quote(text: "You have brains in your head. You have feet in your shoes. You can steer yourself any direction you choose.", author: "Dr. Seuss", category: "AGENCY"),
        Quote(text: "Everything you've ever wanted is on the other side of fear.", author: "George Addair", category: "COURAGE"),
        Quote(text: "Dream big and dare to fail.", author: "Norman Vaughan", category: "DREAMS"),
        Quote(text: "You don't have to be great to start, but you have to start to be great.", author: "Zig Ziglar", category: "ACTION"),
        Quote(text: "It's not whether you get knocked down, it's whether you get up.", author: "Vince Lombardi", category: "RESILIENCE"),
        Quote(text: "We become what we think about.", author: "Earl Nightingale", category: "MINDSET"),
        Quote(text: "Happiness is not something ready-made. It comes from your own actions.", author: "Dalai Lama", category: "JOY"),
        Quote(text: "If you can dream it, you can achieve it.", author: "Zig Ziglar", category: "DREAMS"),
        Quote(text: "People who are crazy enough to think they can change the world are the ones who do.", author: "Rob Siltanen", category: "DREAMS"),
        Quote(text: "Limitations live only in our minds. But if we use our imaginations, our possibilities become limitless.", author: "Jamie Paolinetti", category: "CREATIVITY"),
        Quote(text: "I have learned over the years that when one's mind is made up, this diminishes fear.", author: "Rosa Parks", category: "COURAGE"),
        Quote(text: "Twenty years from now you will be more disappointed by the things you didn't do than by the ones you did do.", author: "Mark Twain", category: "COURAGE"),
        Quote(text: "Life is not measured by the number of breaths we take, but by the moments that take our breath away.", author: "Maya Angelou", category: "JOY"),
        Quote(text: "We may encounter many defeats but we must not be defeated.", author: "Maya Angelou", category: "RESILIENCE"),
        Quote(text: "First, have a definite, clear practical ideal — a goal, an objective.", author: "Aristotle", category: "PURPOSE"),
        Quote(text: "The best revenge is massive success.", author: "Frank Sinatra", category: "ACTION"),
        Quote(text: "I didn't fail the test. I just found 100 ways to do it wrong.", author: "Benjamin Franklin", category: "RESILIENCE"),
        Quote(text: "When everything seems to be going against you, remember that the airplane takes off against the wind, not with it.", author: "Henry Ford", category: "RESILIENCE"),
        Quote(text: "If you genuinely want something, don't wait for it. Teach yourself to be impatient.", author: "Gurbaksh Chahal", category: "ACTION"),
        Quote(text: "Your time is limited, so don't waste it living someone else's life.", author: "Steve Jobs", category: "PURPOSE"),
        Quote(text: "The way to get started is to quit talking and begin doing.", author: "Walt Disney", category: "ACTION"),
        Quote(text: "If life were predictable it would cease to be life, and be without flavor.", author: "Eleanor Roosevelt", category: "JOY"),
        Quote(text: "If you set your goals ridiculously high and it's a failure, you will fail above everyone else's success.", author: "James Cameron", category: "DREAMS"),
        Quote(text: "You only live once, but if you do it right, once is enough.", author: "Mae West", category: "JOY"),
        Quote(text: "Many of life's failures are people who did not realize how close they were to success when they gave up.", author: "Thomas A. Edison", category: "PERSEVERANCE"),
        Quote(text: "I find that the harder I work, the more luck I seem to have.", author: "Thomas Jefferson", category: "ACTION"),
        Quote(text: "Success is not final; failure is not fatal. It is the courage to continue that counts.", author: "Winston S. Churchill", category: "RESILIENCE"),
        Quote(text: "It is better to fail in originality than to succeed in imitation.", author: "Herman Melville", category: "CREATIVITY"),
        Quote(text: "The road to success and the road to failure are almost exactly the same.", author: "Colin R. Davis", category: "PERSEVERANCE"),
        Quote(text: "I cannot give you the formula for success, but I can give you the formula for failure — try to please everybody.", author: "Herbert Bayard Swope", category: "WISDOM"),
        Quote(text: "Success usually comes to those who are too busy to be looking for it.", author: "Henry David Thoreau", category: "ACTION"),
        Quote(text: "Opportunities don't happen. You create them.", author: "Chris Grosser", category: "ACTION"),
        Quote(text: "Don't be afraid to give up the good to go for the great.", author: "John D. Rockefeller", category: "COURAGE"),
        Quote(text: "I would rather die of passion than of boredom.", author: "Vincent van Gogh", category: "PURPOSE"),
        Quote(text: "A successful man is one who can lay a firm foundation with the bricks others have thrown at him.", author: "David Brinkley", category: "RESILIENCE"),
        Quote(text: "No one can make you feel inferior without your consent.", author: "Eleanor Roosevelt", category: "BELIEF"),
        Quote(text: "The whole secret of a successful life is to find out what is one's destiny to do, and then do it.", author: "Henry Ford", category: "PURPOSE"),
        Quote(text: "If you want to achieve greatness, stop asking for permission.", author: "Anonymous", category: "AGENCY"),
        Quote(text: "Things work out best for those who make the best of how things work out.", author: "John Wooden", category: "MINDSET"),
    ]

    /// Returns the same quote all day, changes at midnight
    static func todayQuote() -> Quote {
        let calendar = Calendar.current
        let dayOfYear = calendar.ordinality(of: .day, in: .year, for: Date()) ?? 1
        let index = (dayOfYear - 1) % quotes.count
        return quotes[index]
    }

    /// Formatted date string e.g. "MONDAY · MARCH 16"
    static func todayDateString() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE · MMMM d"
        return formatter.string(from: Date()).uppercased()
    }
}
