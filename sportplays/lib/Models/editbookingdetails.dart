import 'package:flutter/material.dart';
import 'package:sportplays/Models/booking.dart';

class EditBookingDetailsPage extends StatefulWidget {
  final Booking booking;

  const EditBookingDetailsPage({Key? key, required this.booking})
      : super(key: key);

  @override
  _EditBookingDetailsPageState createState() => _EditBookingDetailsPageState();
}

class _EditBookingDetailsPageState extends State<EditBookingDetailsPage> {
  late TextEditingController userNameController;
  late TextEditingController facilityController;
  late TextEditingController startTimeController;
  late TextEditingController endTimeController;

  @override
  void initState() {
    super.initState();
    // Initialize controllers with existing booking information
    userNameController = TextEditingController(text: widget.booking.userName);
    facilityController = TextEditingController(text: widget.booking.facility);
    startTimeController =
        TextEditingController(text: widget.booking.startTime.toString());
    endTimeController =
        TextEditingController(text: widget.booking.endTime.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Booking Details'),
        backgroundColor: Colors.blue, // Set the app bar color to blue
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'User Name:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: userNameController,
            ),
            const SizedBox(height: 10),
            Text(
              'Facility:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: facilityController,
            ),
            const SizedBox(height: 10),
            Text(
              'Start Time:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: startTimeController,
            ),
            const SizedBox(height: 10),
            Text(
              'End Time:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: endTimeController,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Implement logic to save changes and update the booking
                    _saveChanges();
                  },
                  child: Text('Save Changes'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Implement logic to delete the booking
                    _deleteBooking();
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                  child: Text('Delete Booking'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _saveChanges() {
    // Implement logic to save changes and update the booking
    // You can use the values from the controllers (userNameController.text, etc.)
    // Update the existing booking or save changes to your data source
    // For now, let's just print the updated values
    print('Updated User Name: ${userNameController.text}');
    print('Updated Facility: ${facilityController.text}');
    print('Updated Start Time: ${startTimeController.text}');
    print('Updated End Time: ${endTimeController.text}');

    // Close the page
    Navigator.pop(context);
  }

  void _deleteBooking() {
    // Implement logic to delete the booking
    // You can confirm the deletion with a dialog before proceeding
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Delete Booking'),
          content: Text('Are you sure you want to delete this booking?'),
          actions: [
            TextButton(
              onPressed: () {
                // Implement logic to delete the booking
                // For now, let's just print a message
                print('Booking deleted');
                Navigator.pop(context);
                Navigator.pop(context); // Close both dialogs
              },
              child: Text('Yes'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('No'),
            ),
          ],
        );
      },
    );
  }
}
