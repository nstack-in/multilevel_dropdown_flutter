import 'package:flutter/material.dart';

class StaticDropDown extends StatefulWidget {
  @override
  _StaticDropDownState createState() => _StaticDropDownState();
}

class _StaticDropDownState extends State<StaticDropDown> {
  List<String> countries = ['USA', 'India'];
  List<String> indiaProvince = ['New Delhi', 'Bihar', 'Rajasthan'];
  List<String> usaProvince = ['Texas', 'Florida', 'California'];

  List<String> provinces = [];
  String selectedCountry;
  String selectedProvince;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Static Multi Level Dropdown'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: [
          // Country Dropdown
          DropdownButton<String>(
            hint: Text('Country'),
            value: selectedCountry,
            isExpanded: true,
            items: countries.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (country) {
              if (country == 'USA') {
                provinces = usaProvince;
              } else if (country == 'India') {
                provinces = indiaProvince;
              } else {
                provinces = [];
              }
              setState(() {
                selectedProvince = null;
                selectedCountry = country;
              });
            },
          ),
          // Country Dropdown Ends here
          SizedBox(height: 60.0),
          // Province Dropdown
          DropdownButton<String>(
            hint: Text('Province'),
            value: selectedProvince,
            isExpanded: true,
            items: provinces.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (province) {
              setState(() {
                selectedProvince = province;
              });
            },
          ),
          // Province Dropdown Ends here
        ],
      ),
    );
  }
}
