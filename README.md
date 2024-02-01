# smart_bazar

##Problem statement:
In the ever-evolving landscape of e-commerce, businesses face challenges in adapting to rapidly changing consumer preferences, ensuring personalized shopping experiences, and staying ahead of competitors. As a forward-thinking entrepreneur, you recognize the need for a cutting-edge Smart E-commerce Business App that addresses these challenges and revolutionizes the way businesses engage with customers.

##Proposed solution
1.User Authentication:
Elevating security standards, our app features a robust user authentication system. Users can confidently access their accounts, knowing their information is safeguarded.
2.Online Shopping Extravaganza:
Immerse yourself in a diverse shopping experience. From the latest fashion trends to cutting-edge electronics, our app offers a vast product catalog accessible with just a few taps.
3.Effortless Delivery Tracking:
Bid farewell to delivery uncertainties. The app includes a state-of-the-art tracking system, offering real-time updates on the journey of your orders, ensuring you know exactly when to expect your package.
4.Secure Online Payments with GPay:
Enjoy a seamless checkout experience with Google Pay. Our integration not only streamlines payments but also ensures the highest standards of transaction security.
5.Empowering Admin Panel:
For business administrators, we've implemented a powerful admin panel. This feature allows for comprehensive management, including inventory oversight, order processing, and user analytics. The admin panel empowers businesses to make data-driven decisions and maintain operational excellence.

Features
Email & Password Authentication
Persisting Auth State
Searching Products
Filtering Products (Based on Category)
Product Details
Rating
Getting Deal of the Day
Cart
Checking out with Google/Apple Pay
Viewing My Orders
Viewing Order Details & Status
Sign Out
Admin Panel
Viewing All Products
Adding Products
Deleting Products
Viewing Orders
Changing Order Status

## Screenshots:
[click for screenshots](https://drive.google.com/drive/folders/1nVVZXwyh3r89mhLSesX4pxipC1KSQ-q1?usp=drive_link)

## Application link:
[click for application apk file](https://drive.google.com/drive/folders/13nx-18zfttY0OvdCS-6yPsMi-Ky6quga?usp=drive_link)

## Running Locally
After cloning this repository, migrate to ```smart_bazar``` folder. Then, follow the following steps:
- Create MongoDB Project & Cluster
- Click on Connect, follow the process where you will get the uri.- Replace the MongoDB uri with yours in ```server/index.js```.
- Head to ```lib/constants/global_variables.dart``` file, replace <yourip> with your IP Address. 
- Create Cloudinary Project, enable unsigned operation in settings.
- Head to ```lib/features/admin/services/admin_services.dart```, replace ```xxxxxx``` and ```xxxxxx``` with your Cloud Name and Upload Preset respectively.

Then run the following commands to run your app:

### Server Side
```bash
  cd server
  npm install
  npm run dev 
```

### Client Side
```bash
  flutter pub get
  open -a simulator (to get iOS Simulator)
  flutter run
```

## Tech Used
**Server**: Node.js, Express, Mongoose, MongoDB, Cloudinary

**Client**: Flutter, Provider(as modern architecture)
Tech Used
Server: Node.js, Express, Mongoose, MongoDB, Cloudinary

Client: Flutter, Provider

