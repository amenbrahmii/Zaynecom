# ZAYN E-commerce Store 🛍️

A modern, premium e-commerce landing page for ZAYN oversized premium T-shirts with integrated Supabase backend for order management and analytics.

## ✨ Features

### 🎨 Product Page (`main.html`)
- **Premium Design**: Clean, luxury aesthetic with smooth animations
- **Product Gallery**: Video and image support with smooth transitions
- **Dynamic Media**: Different media sets based on color and gender selection
- **Size & Color Options**: Interactive selection with visual feedback
- **Promotional Offers**: Bundle deals (2 for 79 DT, 3 for 99 DT with free shipping)
- **Order Form**: Complete customer information collection
- **Real-time Order Summary**: Dynamic pricing calculation
- **Mobile Responsive**: Fully optimized for all devices
- **Smooth Animations**: GSAP-powered animations and Lenis smooth scrolling

### 📊 Admin Dashboard (`dashboard.html`)
- **Order Management**: View all customer orders in real-time
- **Status Control**: Update order status (Pending, Confirmed, Canceled, Return)
- **Statistics**: Total orders, pending, confirmed, and revenue tracking
- **Filter & Search**: Filter orders by status
- **Detailed View**: Modal with complete order information
- **Mobile Optimized**: Card-based layout for mobile devices
- **Auto-refresh**: Updates every 30 seconds automatically

### 🔧 Diagnostic Tool (`test-connection.html`)
- **Connection Testing**: Verify Supabase connectivity
- **Database Testing**: Test read/write operations
- **Detailed Logging**: Console output for debugging

## 🗄️ Database Setup

### Supabase Configuration

1. Create a Supabase project at [supabase.com](https://supabase.com)
2. Navigate to SQL Editor
3. Run the complete SQL script from `supabase-setup.sql`

The setup creates:
- `visitors` table - Tracks page visits
- `orders` table - Stores customer orders
- Row Level Security (RLS) policies
- Performance indexes
- Analytics views

## 🚀 Getting Started

### Prerequisites
- A web browser (Chrome, Firefox, Safari, Edge)
- Supabase account (for backend functionality)
- No build tools required - runs directly in browser!

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/amenbrahmii/Zaynecom.git
   cd Zaynecom
   ```

2. **Set up Supabase**
   - Create a new Supabase project
   - Run the SQL script from `supabase-setup.sql`
   - Update the Supabase URL and ANON KEY in:
     - `main.html` (lines 1030-1031)
     - `dashboard.html` (lines 602-603)

3. **Open the application**
   - Product Page: Open `main.html` in your browser
   - Admin Dashboard: Open `dashboard.html` in your browser
   - Test Connection: Open `test-connection.html` to verify setup

### Local Development

Since this is a static site, you can use any local server:

```bash
# Using Python
python -m http.server 8000

# Using Node.js (http-server)
npx http-server

# Using PHP
php -S localhost:8000
```

## 📁 Project Structure

```
Zaynecom/
├── main.html                 # Main product page
├── dashboard.html            # Admin dashboard
├── test-connection.html      # Supabase connection tester
├── supabase-setup.sql        # Database setup script
├── .gitignore               # Git ignore rules
├── README.md                # This file
├── logo1.png                # Brand logo
└── preview*.jpg/mp4         # Product media files
```

## 🛠️ Technologies Used

- **Frontend**: HTML5, CSS3, JavaScript (ES6+)
- **Animations**: GSAP 3.12, ScrollTrigger, Lenis Smooth Scroll
- **Backend**: Supabase (PostgreSQL + Real-time)
- **Fonts**: Google Fonts (Playfair Display, Cormorant Garamond, Montserrat)
- **No Framework**: Pure vanilla JavaScript for maximum performance

## 🎯 Key Features

### Product Customization
- Gender selection (Homme/Femme)
- Color options (Blanc/Noir)
- Size selection (S, M, L, XL, XXL)
- Quantity selector
- Promotional bundles

### Order Management
- Customer information collection
- Automatic price calculation
- Order status tracking
- Real-time dashboard updates

### Analytics
- Visitor tracking
- Order statistics
- Revenue tracking
- City-based order distribution

## 🔒 Security

- Row Level Security (RLS) enabled on all tables
- Public policies for order insertion (frontend)
- Read access for dashboard viewing
- Update access for order status management

## 📱 Responsive Design

- **Desktop**: Full table view with all features
- **Tablet**: Optimized layouts
- **Mobile**: Card-based order display, touch-optimized controls

## 🐛 Troubleshooting

### Dashboard not loading?
1. Check browser console (F12) for errors
2. Verify Supabase credentials are correct
3. Ensure SQL setup script has been run
4. Use `test-connection.html` to diagnose issues

### Orders not saving?
1. Open browser console to see error messages
2. Verify RLS policies are set up correctly
3. Check Supabase project is active

### Connection issues?
1. Open `test-connection.html`
2. Click "Test Connection"
3. Follow the diagnostic steps

## 📞 Support

For issues or questions:
- Open an issue on GitHub
- Contact: 99 213 014

## 📄 License

This project is proprietary software.

## 🙏 Acknowledgments

- GSAP for animations
- Supabase for backend infrastructure
- Google Fonts for typography

---

**Built with ❤️ for ZAYN Brand**
