import 'dart:convert';

import 'package:ppegawai/pegawai_screen.dart';
import 'package:ppegawai/utils/ip.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class EditPegawai extends StatefulWidget {
  final Map<String, dynamic> pegawai;

  const EditPegawai({Key? key, required this.pegawai}) : super(key: key);

  @override
  _EditPegawaiState createState() => _EditPegawaiState();
}

class _EditPegawaiState extends State<EditPegawai> {
  TextEditingController txtNama = TextEditingController();
  TextEditingController txtNoBp = TextEditingController();
  TextEditingController txtNoHp = TextEditingController();
  TextEditingController txtEmail = TextEditingController();

  GlobalKey<FormState> keyForm = GlobalKey<FormState>();

  Future<void> updatePegawai(
      String id, String newName, String noBp, String noHp, String email) async {
    String urlUpdatePegawai = "$ip/updatePegawai.php";
    try {
      var response = await http.post(
        Uri.parse(urlUpdatePegawai),
        body: {
          'id': id,
          'nama': newName,
          'no_bp': noBp,
          'no_hp': noHp,
          'email': email,
        },
      );
      var data = jsonDecode(response.body);
      if (data['is_success'] == true) {
        print("Berhasil edit pegawai");
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PegawaiScreen()),
        );
      } else {
        print("Gagal edit pegawai");
      }
    } catch (e) {
      print("Error: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Pegawai'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        // Wrap your Column with SingleChildScrollView
        child: Center(
          child: Form(
            key: keyForm,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    controller: txtNama,
                    validator: (val) {
                      return val!.isEmpty ? "Tidak boleh kosong" : null;
                    },
                    decoration: InputDecoration(
                        labelText: '${widget.pegawai["nama"]}',
                        hintText: '${widget.pegawai["nama"]}',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    controller: txtNoBp,
                    validator: (val) {
                      return val!.isEmpty ? "Tidak boleh kosong" : null;
                    },
                    decoration: InputDecoration(
                        labelText: '${widget.pegawai["no_bp"]}',
                        hintText: '${widget.pegawai["no_bp"]}',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    controller: txtNoHp,
                    validator: (val) {
                      return val!.isEmpty ? "Tidak boleh kosong" : null;
                    },
                    decoration: InputDecoration(
                        labelText: '${widget.pegawai["no_hp"]}',
                        hintText: '${widget.pegawai["no_hp"]}',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    controller: txtEmail,
                    validator: (val) {
                      return val!.isEmpty ? "Tidak boleh kosong" : null;
                    },
                    decoration: InputDecoration(
                        labelText: '${widget.pegawai["email"]}',
                        hintText: '${widget.pegawai["email"]}',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {
                      if (keyForm.currentState?.validate() == true) {
                        updatePegawai(
                          '${widget.pegawai["id"]}'.toString(),
                          txtNama.text.toString(),
                          txtNoBp.text.toString(),
                          txtNoHp.text.toString(),
                          txtEmail.text.toString(),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("silahkan isi data")));
                      }
                    },
                    color: Colors.green,
                    textColor: Colors.black,
                    height: 45,
                    child: const Text("Submit"),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
