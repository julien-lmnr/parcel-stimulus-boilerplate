import { Application } from "stimulus";

// Import SCSS
import './../scss/app.scss';

// Import Stimulus controllers
import HelloParcelController from './controllers/hello-parcel_controller';

// Start Stimulus
const application = Application.start();

// Declaration Stimulus controllers
application.register('hello-parcel', HelloParcelController);
