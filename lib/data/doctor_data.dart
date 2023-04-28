import '../resources/resources.dart';

class DoctorData{

  static List<Map<String, String>> doctorData = [
    {
      "Name": "Dr. Travis Westaby",
      "Image": ImageAssets.doctor_1Image,
      "work": "Cardiologist"
    },
    {
      "Name": "Dr. Jenny Watson",
      "Image": ImageAssets.doctor_2Image,
      "work": "Dermatologists "
    },
    {
      "Name": "Dr. Drake Boeson",
      "Image": ImageAssets.doctor_3Image,
      "work": "Nutritionist "
    },
    {
      "Name": "Dr. Rodolfo Goode",
      "Image": ImageAssets.doctor_4Image,
      "work": "Ophthalmologist"
    },
    {
      "Name": "Dr. Bernard Bliss Goode",
      "Image": ImageAssets.doctor_5Image,
      "work": "Radiologist "
    },
    {
      "Name": "Dr. Rodolfo Goode",
      "Image": ImageAssets.doctor_4Image,
      "work": "Ophthalmologist"
    },
  ];

  static final List doctorCategory = [
    "All",
    "General",
    "Dentist",
    "Nutritionist",
    "Ophthalmologist",
    "Radiologist",
    "Pediatric",
    "Neurologist",
    "Dermatologists",
    "General Surgeon",
    "Cardiologist",
  ];

  static final List<Map<String,dynamic>> topDoctor = [
    {
      'Image' : ImageAssets.doctor_1Image,
      'Name' : 'Dr. Jerome Bell',
      'Special': 'Cardiologist',
      'Reviews': ' 4.9 (4821 reviews)',
    },
    {
      'Image' : ImageAssets.doctor_2Image,
      'Name' : 'Dr. Jenny Wilson',
      'Special': 'Dermatologists',
      'Reviews': ' 4.8 (3721 reviews)',
    },
    {
      'Image' : ImageAssets.doctor_3Image,
      'Name' : 'Dr. Albert Flores',
      'Special': 'Pediatric',
      'Reviews': ' 4.8 (3921 reviews)',
    },
    {
      'Image' : ImageAssets.doctor_4Image,
      'Name' : 'Dr. Jane Cooper',
      'Special': 'Neurologist',
      'Reviews': ' 4.9 (4921 reviews)',
    },
    {
      'Image' : ImageAssets.doctor_4Image,
      'Name' :'Dr. Ralph Edwards',
      'Special': 'Dentist',
      'Reviews': ' 4.7 (2921 reviews)',
    },
    {
      'Image' : ImageAssets.doctor_5Image,
      'Name' :'Dr. Darrell Steward',
      'Special': 'Nutritionist',
      'Reviews': ' 4.8 (2521 reviews)',
    },
    {
      'Image' : ImageAssets.doctor_6Image,
      'Name' : 'Dr. Ronald Richards',
      'Special': 'Ophthalmologist',
      'Reviews': ' 3.7 (1921 reviews)',
    },
  ];

  static List<Map<String,dynamic>> reviewOfPatient = [
    {
      'Image' : ImageAssets.patient1Image,
      'Name' : 'Jane Cooper',
      'Date' : 'December 20,2022',
      'feedback' : 'The doctor is great!',
    },
    {
      'Image' : ImageAssets.patient2Image,
      'Name' : 'Arlene McCoy',
      'Date' : 'July 19,2022',
      'feedback' : 'Great Experience',
    },
    {
      'Image' : ImageAssets.patient3Image,
      'Name' : 'Annette black',
      'Date' : 'June 18,2022',
      'feedback' : 'perfect!',
    },
    {
      'Image' : ImageAssets.patient4Image,
      'Name' : 'Savannah Nguyen',
      'Date' : 'May 17,2022',
      'feedback' : 'Nice person!',
    },
    {
      'Image' : ImageAssets.patient5Image,
      'Name' : 'Kathryn Murphy',
      'Date' : 'April 16,2022',
      'feedback' : 'omg, this is amazing',
    },
    {
      'Image' : ImageAssets.patient6Image,
      'Name' : 'Charlotte Han-lin',
      'Date' : 'March 15,2022',
      'feedback' : 'Great Experience',
    },
    {
      'Image' : ImageAssets.patient7Image,
      'Name' : 'Darron Kowalski',
      'Date' : 'February 14,2022',
      'feedback' : 'perfect!',
    },
    {
      'Image' : ImageAssets.patient8Image,
      'Name' : 'Lauralee Quintero',
      'Date' : 'January 13,2022',
      'feedback' : 'omg, this is amazing',
    },
  ];
}