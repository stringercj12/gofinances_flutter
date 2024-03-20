import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gofinances/core/app_color.dart';
import 'package:gofinances/core/app_fonts.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String buttonSelected = "entrance";

  final precoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(152),
        child: Container(
          height: 114,
          color: AppColors.purple,
          child: Center(
            child: ListTile(
              title: Center(
                child: Text(
                  "Cadastro",
                  style: AppFonts.title,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Container(
        color: AppColors.background,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 26,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: "Nome",
                      hintText: 'Nome',
                      contentPadding: const EdgeInsets.all(18),
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.text,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          color: AppColors.shape,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          color: AppColors.purple,
                        ),
                      ),
                      fillColor: AppColors.shape,
                      filled: true,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: precoController,
                    onChanged: (value) {
                      setState(() {
                        precoController.text = value;
                      });
                    },
                    keyboardType: TextInputType.text,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      CentavosInputFormatter(
                        casasDecimais: 3,
                        moeda: true,
                      ),
                    ],
                    decoration: InputDecoration(
                      labelText: "Preço",
                      hintText: 'Preço',
                      contentPadding: const EdgeInsets.all(18),
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.text,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          color: AppColors.shape,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          color: AppColors.purple,
                        ),
                      ),
                      fillColor: AppColors.shape,
                      filled: true,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 56,
                          width: 160,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: buttonSelected == "entrance"
                                  ? AppColors.green
                                  : Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: const BorderSide(
                                  color: AppColors.green,
                                ),
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                buttonSelected = "entrance";
                              });
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.arrow_circle_up,
                                  color: buttonSelected == "entrance"
                                      ? AppColors.shape
                                      : AppColors.green,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "Entrada",
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: buttonSelected == "entrance"
                                        ? AppColors.shape
                                        : AppColors.text,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: SizedBox(
                          height: 56,
                          width: 160,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: buttonSelected == "exits"
                                  ? AppColors.red
                                  : Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: const BorderSide(
                                  color: AppColors.red,
                                ),
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                buttonSelected = "exits";
                              });
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.arrow_circle_down,
                                  color: buttonSelected == "exits"
                                      ? AppColors.shape
                                      : AppColors.red,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "Saída",
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: buttonSelected == "exits"
                                        ? AppColors.shape
                                        : AppColors.text,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  DropdownButtonFormField(
                    decoration: InputDecoration(
                      labelText: "Categoria",
                      hintText: 'Categoria',
                      contentPadding: const EdgeInsets.all(18),
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.text,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          color: AppColors.shape,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          color: AppColors.purple,
                        ),
                      ),
                      fillColor: AppColors.shape,
                      filled: true,
                    ),
                    isExpanded: true,
                    value: null,
                    items: const [
                      DropdownMenuItem(
                        value: 1,
                        child: Text('Categoria 1'),
                      ),
                      DropdownMenuItem(
                        value: 2,
                        child: Text('Categoria 2'),
                      ),
                      DropdownMenuItem(
                        value: 3,
                        child: Text('Categoria 3'),
                      ),
                      DropdownMenuItem(
                        value: 4,
                        child: Text('Categoria 4'),
                      ),
                    ],
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 56,
                width: double.maxFinite,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: AppColors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Button Enviar preço ${precoController.text}',
                        ),
                      ),
                    );
                  },
                  child: Text(
                    "Enviar",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.shape,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
