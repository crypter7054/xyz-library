import 'package:flutter/material.dart';
import 'dart:math';

class LogoView extends StatefulWidget {
  const LogoView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LogoViewState createState() => _LogoViewState();
}

class _LogoViewState extends State<LogoView> {

  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 150,
      child: Transform.rotate(
        angle: -pi * 2,
        child: CustomPaint(
          painter: LogoPainter(),
        ),
      ),
    );
  }
}

class LogoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    Paint paint0Fill = Paint()..style=PaintingStyle.fill;
    paint0Fill.color = const Color(0xff0EA5E9).withOpacity(1.0);
    canvas.drawRect(Rect.fromLTWH(size.width*0.1005291,size.height*0.03647416,size.width*0.8015873,size.height*0.6534954),paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width*0.3091323,size.height*0.1056116);
    path_1.lineTo(size.width*0.3572222,size.height*0.2030930);
    path_1.lineTo(size.width*0.3591455,size.height*0.2031340);
    path_1.lineTo(size.width*0.4106032,size.height*0.1077830);
    path_1.lineTo(size.width*0.4693968,size.height*0.1090410);
    path_1.lineTo(size.width*0.3919603,size.height*0.2488842);
    path_1.lineTo(size.width*0.4664947,size.height*0.3919787);
    path_1.lineTo(size.width*0.4066190,size.height*0.3906991);
    path_1.lineTo(size.width*0.3576878,size.height*0.2930605);
    path_1.lineTo(size.width*0.3557646,size.height*0.2930191);
    path_1.lineTo(size.width*0.3037037,size.height*0.3884954);
    path_1.lineTo(size.width*0.2440698,size.height*0.3872188);
    path_1.lineTo(size.width*0.3234286,size.height*0.2474176);
    path_1.lineTo(size.width*0.2500984,size.height*0.1043483);
    path_1.lineTo(size.width*0.3091323,size.height*0.1056116);
    path_1.close();

    Paint paint1Fill = Paint()..style=PaintingStyle.fill;
    paint1Fill.color = const Color(0xffF0F0F0).withOpacity(1.0);
    canvas.drawPath(path_1,paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width*0.5497831,size.height*0.3995653);
    path_2.lineTo(size.width*0.5466032,size.height*0.3642462);
    path_2.lineTo(size.width*0.6511138,size.height*0.1526565);
    path_2.lineTo(size.width*0.5286323,size.height*0.1672055);
    path_2.lineTo(size.width*0.5242169,size.height*0.1181438);
    path_2.lineTo(size.width*0.7117698,size.height*0.09586596);
    path_2.lineTo(size.width*0.7149471,size.height*0.1311845);
    path_2.lineTo(size.width*0.6103175,size.height*0.3427903);
    path_2.lineTo(size.width*0.7329206,size.height*0.3282280);
    path_2.lineTo(size.width*0.7373360,size.height*0.3772888);
    path_2.lineTo(size.width*0.5497831,size.height*0.3995653);
    path_2.close();

    Paint paint2Fill = Paint()..style=PaintingStyle.fill;
    paint2Fill.color = const Color(0xffF0F0F0).withOpacity(1.0);
    canvas.drawPath(path_2,paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(size.width*0.3837884,size.height*0.3437690);
    path_3.lineTo(size.width*0.4421085,size.height*0.3437690);
    path_3.lineTo(size.width*0.4982646,size.height*0.4656261);
    path_3.lineTo(size.width*0.5006693,size.height*0.4656261);
    path_3.lineTo(size.width*0.5568280,size.height*0.3437690);
    path_3.lineTo(size.width*0.6151481,size.height*0.3437690);
    path_3.lineTo(size.width*0.5253228,size.height*0.5266930);
    path_3.lineTo(size.width*0.5253228,size.height*0.6267204);
    path_3.lineTo(size.width*0.4736138,size.height*0.6267204);
    path_3.lineTo(size.width*0.4736138,size.height*0.5266930);
    path_3.lineTo(size.width*0.3837884,size.height*0.3437690);
    path_3.close();

    Paint paint3Fill = Paint()..style=PaintingStyle.fill;
    paint3Fill.color = const Color(0xffF0F0F0).withOpacity(1.0);
    canvas.drawPath(path_3,paint3Fill);

    Path path_4 = Path();
    path_4.moveTo(size.width*0.04304947,size.height*0.7916565);
    path_4.lineTo(size.width*0.06788122,size.height*0.8398723);
    path_4.lineTo(size.width*0.06884312,size.height*0.8398723);
    path_4.lineTo(size.width*0.09379497,size.height*0.7916565);
    path_4.lineTo(size.width*0.1231963,size.height*0.7916565);
    path_4.lineTo(size.width*0.08561799,size.height*0.8623921);
    path_4.lineTo(size.width*0.1240381,size.height*0.9331307);
    path_4.lineTo(size.width*0.09409577,size.height*0.9331307);
    path_4.lineTo(size.width*0.06884312,size.height*0.8848450);
    path_4.lineTo(size.width*0.06788122,size.height*0.8848450);
    path_4.lineTo(size.width*0.04262857,size.height*0.9331307);
    path_4.lineTo(size.width*0.01280664,size.height*0.9331307);
    path_4.lineTo(size.width*0.05134683,size.height*0.8623921);
    path_4.lineTo(size.width*0.01352815,size.height*0.7916565);
    path_4.lineTo(size.width*0.04304947,size.height*0.7916565);
    path_4.close();
    path_4.moveTo(size.width*0.1324556,size.height*0.7916565);
    path_4.lineTo(size.width*0.1616161,size.height*0.7916565);
    path_4.lineTo(size.width*0.1896944,size.height*0.8525836);
    path_4.lineTo(size.width*0.1908971,size.height*0.8525836);
    path_4.lineTo(size.width*0.2189754,size.height*0.7916565);
    path_4.lineTo(size.width*0.2481362,size.height*0.7916565);
    path_4.lineTo(size.width*0.2032228,size.height*0.8831155);
    path_4.lineTo(size.width*0.2032228,size.height*0.9331307);
    path_4.lineTo(size.width*0.1773690,size.height*0.9331307);
    path_4.lineTo(size.width*0.1773690,size.height*0.8831155);
    path_4.lineTo(size.width*0.1324556,size.height*0.7916565);
    path_4.close();
    path_4.moveTo(size.width*0.2610331,size.height*0.9331307);
    path_4.lineTo(size.width*0.2610331,size.height*0.9153769);
    path_4.lineTo(size.width*0.3224815,size.height*0.8163161);
    path_4.lineTo(size.width*0.2609127,size.height*0.8163161);
    path_4.lineTo(size.width*0.2609127,size.height*0.7916565);
    path_4.lineTo(size.width*0.3551878,size.height*0.7916565);
    path_4.lineTo(size.width*0.3551878,size.height*0.8094073);
    path_4.lineTo(size.width*0.2936799,size.height*0.9084681);
    path_4.lineTo(size.width*0.3553095,size.height*0.9084681);
    path_4.lineTo(size.width*0.3553095,size.height*0.9331307);
    path_4.lineTo(size.width*0.2610331,size.height*0.9331307);
    path_4.close();
    path_4.moveTo(size.width*0.4144709,size.height*0.9331307);
    path_4.lineTo(size.width*0.4144709,size.height*0.7916565);
    path_4.lineTo(size.width*0.4405053,size.height*0.7916565);
    path_4.lineTo(size.width*0.4405053,size.height*0.9084681);
    path_4.lineTo(size.width*0.4932963,size.height*0.9084681);
    path_4.lineTo(size.width*0.4932963,size.height*0.9331307);
    path_4.lineTo(size.width*0.4144709,size.height*0.9331307);
    path_4.close();
    path_4.moveTo(size.width*0.5100556,size.height*0.9331307);
    path_4.lineTo(size.width*0.5100556,size.height*0.8270243);
    path_4.lineTo(size.width*0.5356693,size.height*0.8270243);
    path_4.lineTo(size.width*0.5356693,size.height*0.9331307);
    path_4.lineTo(size.width*0.5100556,size.height*0.9331307);
    path_4.close();
    path_4.moveTo(size.width*0.5229233,size.height*0.8133465);
    path_4.cubicTo(size.width*0.5191138,size.height*0.8133465,size.width*0.5158492,size.height*0.8118967,size.width*0.5131217,size.height*0.8089939);
    path_4.cubicTo(size.width*0.5104365,size.height*0.8060456,size.width*0.5090952,size.height*0.8025228,size.width*0.5090952,size.height*0.7984255);
    path_4.cubicTo(size.width*0.5090952,size.height*0.7943708,size.width*0.5104365,size.height*0.7908967,size.width*0.5131217,size.height*0.7879939);
    path_4.cubicTo(size.width*0.5158492,size.height*0.7850456,size.width*0.5191138,size.height*0.7835714,size.width*0.5229233,size.height*0.7835714);
    path_4.cubicTo(size.width*0.5267302,size.height*0.7835714,size.width*0.5299762,size.height*0.7850456,size.width*0.5326640,size.height*0.7879939);
    path_4.cubicTo(size.width*0.5353889,size.height*0.7908967,size.width*0.5367513,size.height*0.7943708,size.width*0.5367513,size.height*0.7984255);
    path_4.cubicTo(size.width*0.5367513,size.height*0.8025228,size.width*0.5353889,size.height*0.8060456,size.width*0.5326640,size.height*0.8089939);
    path_4.cubicTo(size.width*0.5299762,size.height*0.8118967,size.width*0.5267302,size.height*0.8133465,size.width*0.5229233,size.height*0.8133465);
    path_4.close();
    path_4.moveTo(size.width*0.5566667,size.height*0.9331307);
    path_4.lineTo(size.width*0.5566667,size.height*0.7916565);
    path_4.lineTo(size.width*0.5822804,size.height*0.7916565);
    path_4.lineTo(size.width*0.5822804,size.height*0.8448480);
    path_4.lineTo(size.width*0.5830635,size.height*0.8448480);
    path_4.cubicTo(size.width*0.5841852,size.height*0.8419909,size.width*0.5858095,size.height*0.8390912,size.width*0.5879339,size.height*0.8361429);
    path_4.cubicTo(size.width*0.5900979,size.height*0.8331489,size.width*0.5929021,size.height*0.8306626,size.width*0.5963492,size.height*0.8286809);
    path_4.cubicTo(size.width*0.5998386,size.height*0.8266565,size.width*0.6041667,size.height*0.8256413,size.width*0.6093386,size.height*0.8256413);
    path_4.cubicTo(size.width*0.6160714,size.height*0.8256413,size.width*0.6222831,size.height*0.8276687,size.width*0.6279762,size.height*0.8317204);
    path_4.cubicTo(size.width*0.6336693,size.height*0.8357295,size.width*0.6382169,size.height*0.8417842,size.width*0.6416243,size.height*0.8498906);
    path_4.cubicTo(size.width*0.6450317,size.height*0.8579483,size.width*0.6467354,size.height*0.8680578,size.width*0.6467354,size.height*0.8802158);
    path_4.cubicTo(size.width*0.6467354,size.height*0.8920517,size.width*0.6450714,size.height*0.9020456,size.width*0.6417460,size.height*0.9101976);
    path_4.cubicTo(size.width*0.6384577,size.height*0.9183009,size.width*0.6339683,size.height*0.9244498,size.width*0.6282778,size.height*0.9286413);
    path_4.cubicTo(size.width*0.6226243,size.height*0.9327842,size.width*0.6162910,size.height*0.9348571,size.width*0.6092778,size.height*0.9348571);
    path_4.cubicTo(size.width*0.6043069,size.height*0.9348571,size.width*0.6000794,size.height*0.9339149,size.width*0.5965899,size.height*0.9320243);
    path_4.cubicTo(size.width*0.5931429,size.height*0.9301368,size.width*0.5903175,size.height*0.9277660,size.width*0.5881138,size.height*0.9249088);
    path_4.cubicTo(size.width*0.5859074,size.height*0.9220091,size.width*0.5842249,size.height*0.9190851,size.width*0.5830635,size.height*0.9161368);
    path_4.lineTo(size.width*0.5819206,size.height*0.9161368);
    path_4.lineTo(size.width*0.5819206,size.height*0.9331307);
    path_4.lineTo(size.width*0.5566667,size.height*0.9331307);
    path_4.close();
    path_4.moveTo(size.width*0.5817407,size.height*0.8800760);
    path_4.cubicTo(size.width*0.5817407,size.height*0.8863860,size.width*0.5825026,size.height*0.8918906,size.width*0.5840238,size.height*0.8965866);
    path_4.cubicTo(size.width*0.5855476,size.height*0.9012857,size.width*0.5877513,size.height*0.9049453,size.width*0.5906376,size.height*0.9075714);
    path_4.cubicTo(size.width*0.5935238,size.height*0.9101489,size.width*0.5970317,size.height*0.9114407,size.width*0.6011614,size.height*0.9114407);
    path_4.cubicTo(size.width*0.6053280,size.height*0.9114407,size.width*0.6088571,size.height*0.9101277,size.width*0.6117434,size.height*0.9075015);
    path_4.cubicTo(size.width*0.6146296,size.height*0.9048298,size.width*0.6168122,size.height*0.9011459,size.width*0.6182963,size.height*0.8964498);
    path_4.cubicTo(size.width*0.6198201,size.height*0.8917052,size.width*0.6205820,size.height*0.8862492,size.width*0.6205820,size.height*0.8800760);
    path_4.cubicTo(size.width*0.6205820,size.height*0.8739514,size.width*0.6198386,size.height*0.8685653,size.width*0.6183571,size.height*0.8639119);
    path_4.cubicTo(size.width*0.6168730,size.height*0.8592614,size.width*0.6146878,size.height*0.8556231,size.width*0.6118016,size.height*0.8529970);
    path_4.cubicTo(size.width*0.6089153,size.height*0.8503739,size.width*0.6053704,size.height*0.8490608,size.width*0.6011614,size.height*0.8490608);
    path_4.cubicTo(size.width*0.5969921,size.height*0.8490608,size.width*0.5934656,size.height*0.8503283,size.width*0.5905794,size.height*0.8528602);
    path_4.cubicTo(size.width*0.5877328,size.height*0.8553921,size.width*0.5855476,size.height*0.8589848,size.width*0.5840238,size.height*0.8636353);
    path_4.cubicTo(size.width*0.5825026,size.height*0.8682888,size.width*0.5817407,size.height*0.8737690,size.width*0.5817407,size.height*0.8800760);
    path_4.close();
    path_4.moveTo(size.width*0.6638254,size.height*0.9331307);
    path_4.lineTo(size.width*0.6638254,size.height*0.8270243);
    path_4.lineTo(size.width*0.6886561,size.height*0.8270243);
    path_4.lineTo(size.width*0.6886561,size.height*0.8455380);
    path_4.lineTo(size.width*0.6896190,size.height*0.8455380);
    path_4.cubicTo(size.width*0.6913042,size.height*0.8389514,size.width*0.6941296,size.height*0.8339787,size.width*0.6980979,size.height*0.8306170);
    path_4.cubicTo(size.width*0.7020661,size.height*0.8272097,size.width*0.7066349,size.height*0.8255046,size.width*0.7118042,size.height*0.8255046);
    path_4.cubicTo(size.width*0.7130873,size.height*0.8255046,size.width*0.7144709,size.height*0.8255957,size.width*0.7159550,size.height*0.8257812);
    path_4.cubicTo(size.width*0.7174365,size.height*0.8259635,size.width*0.7187407,size.height*0.8262188,size.width*0.7198624,size.height*0.8265410);
    path_4.lineTo(size.width*0.7198624,size.height*0.8526535);
    path_4.cubicTo(size.width*0.7186587,size.height*0.8522371,size.width*0.7169974,size.height*0.8518693,size.width*0.7148730,size.height*0.8515471);
    path_4.cubicTo(size.width*0.7127487,size.height*0.8512249,size.width*0.7108042,size.height*0.8510638,size.width*0.7090397,size.height*0.8510638);
    path_4.cubicTo(size.width*0.7052725,size.height*0.8510638,size.width*0.7019048,size.height*0.8520091,size.width*0.6989392,size.height*0.8538967);
    path_4.cubicTo(size.width*0.6960132,size.height*0.8557386,size.width*0.6936878,size.height*0.8583161,size.width*0.6919630,size.height*0.8616322);
    path_4.cubicTo(size.width*0.6902804,size.height*0.8649483,size.width*0.6894392,size.height*0.8687720,size.width*0.6894392,size.height*0.8731003);
    path_4.lineTo(size.width*0.6894392,size.height*0.9331307);
    path_4.lineTo(size.width*0.6638254,size.height*0.9331307);
    path_4.close();
    path_4.moveTo(size.width*0.7567937,size.height*0.9351337);
    path_4.cubicTo(size.width*0.7509021,size.height*0.9351337,size.width*0.7456508,size.height*0.9339605,size.width*0.7410423,size.height*0.9316109);
    path_4.cubicTo(size.width*0.7364312,size.height*0.9292158,size.width*0.7327831,size.height*0.9256930,size.width*0.7300979,size.height*0.9210426);
    path_4.cubicTo(size.width*0.7274524,size.height*0.9163435,size.width*0.7261296,size.height*0.9104954,size.width*0.7261296,size.height*0.9034954);
    path_4.cubicTo(size.width*0.7261296,size.height*0.8976018,size.width*0.7270714,size.height*0.8926505,size.width*0.7289550,size.height*0.8886444);
    path_4.cubicTo(size.width*0.7308413,size.height*0.8846353,size.width*0.7334048,size.height*0.8814134,size.width*0.7366534,size.height*0.8789726);
    path_4.cubicTo(size.width*0.7398995,size.height*0.8765319,size.width*0.7435873,size.height*0.8746900,size.width*0.7477143,size.height*0.8734468);
    path_4.cubicTo(size.width*0.7518836,size.height*0.8722036,size.width*0.7562540,size.height*0.8713283,size.width*0.7608228,size.height*0.8708207);
    path_4.cubicTo(size.width*0.7661931,size.height*0.8701763,size.width*0.7705238,size.height*0.8695775,size.width*0.7738095,size.height*0.8690243);
    path_4.cubicTo(size.width*0.7770952,size.height*0.8684255,size.width*0.7794815,size.height*0.8675502,size.width*0.7809656,size.height*0.8663982);
    path_4.cubicTo(size.width*0.7824471,size.height*0.8652492,size.width*0.7831878,size.height*0.8635441,size.width*0.7831878,size.height*0.8612888);
    path_4.lineTo(size.width*0.7831878,size.height*0.8608723);
    path_4.cubicTo(size.width*0.7831878,size.height*0.8564985,size.width*0.7819868,size.height*0.8531125,size.width*0.7795820,size.height*0.8507173);
    path_4.cubicTo(size.width*0.7772169,size.height*0.8483222,size.width*0.7738492,size.height*0.8471277,size.width*0.7694815,size.height*0.8471277);
    path_4.cubicTo(size.width*0.7648704,size.height*0.8471277,size.width*0.7612037,size.height*0.8483009,size.width*0.7584788,size.height*0.8506505);
    path_4.cubicTo(size.width*0.7557513,size.height*0.8529514,size.width*0.7539471,size.height*0.8558541,size.width*0.7530661,size.height*0.8593526);
    path_4.lineTo(size.width*0.7293783,size.height*0.8571429);
    path_4.cubicTo(size.width*0.7305794,size.height*0.8506960,size.width*0.7329444,size.height*0.8451216,size.width*0.7364709,size.height*0.8404255);
    path_4.cubicTo(size.width*0.7400000,size.height*0.8356809,size.width*0.7445476,size.height*0.8320426,size.width*0.7501190,size.height*0.8295106);
    path_4.cubicTo(size.width*0.7557328,size.height*0.8269331,size.width*0.7622249,size.height*0.8256413,size.width*0.7696005,size.height*0.8256413);
    path_4.cubicTo(size.width*0.7747302,size.height*0.8256413,size.width*0.7796429,size.height*0.8263343,size.width*0.7843307,size.height*0.8277143);
    path_4.cubicTo(size.width*0.7890608,size.height*0.8290973,size.width*0.7932487,size.height*0.8312371,size.width*0.7968968,size.height*0.8341398);
    path_4.cubicTo(size.width*0.8005847,size.height*0.8370395,size.width*0.8034921,size.height*0.8407720,size.width*0.8056164,size.height*0.8453313);
    path_4.cubicTo(size.width*0.8077407,size.height*0.8498419,size.width*0.8088016,size.height*0.8552553,size.width*0.8088016,size.height*0.8615653);
    path_4.lineTo(size.width*0.8088016,size.height*0.9331307);
    path_4.lineTo(size.width*0.7845106,size.height*0.9331307);
    path_4.lineTo(size.width*0.7845106,size.height*0.9184164);
    path_4.lineTo(size.width*0.7837910,size.height*0.9184164);
    path_4.cubicTo(size.width*0.7823069,size.height*0.9217325,size.width*0.7803228,size.height*0.9246565,size.width*0.7778386,size.height*0.9271884);
    path_4.cubicTo(size.width*0.7753519,size.height*0.9296778,size.width*0.7723677,size.height*0.9316353,size.width*0.7688783,size.height*0.9330608);
    path_4.cubicTo(size.width*0.7653915,size.height*0.9344438,size.width*0.7613624,size.height*0.9351337,size.width*0.7567937,size.height*0.9351337);
    path_4.close();
    path_4.moveTo(size.width*0.7641296,size.height*0.9148237);
    path_4.cubicTo(size.width*0.7678968,size.height*0.9148237,size.width*0.7712249,size.height*0.9139726,size.width*0.7741111,size.height*0.9122675);
    path_4.cubicTo(size.width*0.7769974,size.height*0.9105198,size.width*0.7792619,size.height*0.9081702,size.width*0.7809048,size.height*0.9052219);
    path_4.cubicTo(size.width*0.7825476,size.height*0.9022736,size.width*0.7833704,size.height*0.8989362,size.width*0.7833704,size.height*0.8952067);
    path_4.lineTo(size.width*0.7833704,size.height*0.8839453);
    path_4.cubicTo(size.width*0.7825688,size.height*0.8845441,size.width*0.7814656,size.height*0.8850973,size.width*0.7800635,size.height*0.8856049);
    path_4.cubicTo(size.width*0.7786984,size.height*0.8860638,size.width*0.7771561,size.height*0.8865015,size.width*0.7754339,size.height*0.8869149);
    path_4.cubicTo(size.width*0.7737090,size.height*0.8872857,size.width*0.7719868,size.height*0.8876292,size.width*0.7702619,size.height*0.8879514);
    path_4.cubicTo(size.width*0.7685397,size.height*0.8882280,size.width*0.7669762,size.height*0.8884833,size.width*0.7655714,size.height*0.8887112);
    path_4.cubicTo(size.width*0.7625661,size.height*0.8892188,size.width*0.7599418,size.height*0.8900243,size.width*0.7576958,size.height*0.8911307);
    path_4.cubicTo(size.width*0.7554524,size.height*0.8922340,size.width*0.7537090,size.height*0.8937325,size.width*0.7524656,size.height*0.8956201);
    path_4.cubicTo(size.width*0.7512222,size.height*0.8974620,size.width*0.7506005,size.height*0.8997660,size.width*0.7506005,size.height*0.9025289);
    path_4.cubicTo(size.width*0.7506005,size.height*0.9065350,size.width*0.7518651,size.height*0.9095988,size.width*0.7543889,size.height*0.9117173);
    path_4.cubicTo(size.width*0.7569550,size.height*0.9137872,size.width*0.7602011,size.height*0.9148237,size.width*0.7641296,size.height*0.9148237);
    path_4.close();
    path_4.moveTo(size.width*0.8286746,size.height*0.9331307);
    path_4.lineTo(size.width*0.8286746,size.height*0.8270243);
    path_4.lineTo(size.width*0.8535053,size.height*0.8270243);
    path_4.lineTo(size.width*0.8535053,size.height*0.8455380);
    path_4.lineTo(size.width*0.8544683,size.height*0.8455380);
    path_4.cubicTo(size.width*0.8561508,size.height*0.8389514,size.width*0.8589762,size.height*0.8339787,size.width*0.8629444,size.height*0.8306170);
    path_4.cubicTo(size.width*0.8669127,size.height*0.8272097,size.width*0.8714815,size.height*0.8255046,size.width*0.8766534,size.height*0.8255046);
    path_4.cubicTo(size.width*0.8779365,size.height*0.8255046,size.width*0.8793201,size.height*0.8255957,size.width*0.8808016,size.height*0.8257812);
    path_4.cubicTo(size.width*0.8822857,size.height*0.8259635,size.width*0.8835873,size.height*0.8262188,size.width*0.8847090,size.height*0.8265410);
    path_4.lineTo(size.width*0.8847090,size.height*0.8526535);
    path_4.cubicTo(size.width*0.8835079,size.height*0.8522371,size.width*0.8818439,size.height*0.8518693,size.width*0.8797196,size.height*0.8515471);
    path_4.cubicTo(size.width*0.8775952,size.height*0.8512249,size.width*0.8756508,size.height*0.8510638,size.width*0.8738889,size.height*0.8510638);
    path_4.cubicTo(size.width*0.8701190,size.height*0.8510638,size.width*0.8667540,size.height*0.8520091,size.width*0.8637857,size.height*0.8538967);
    path_4.cubicTo(size.width*0.8608598,size.height*0.8557386,size.width*0.8585370,size.height*0.8583161,size.width*0.8568122,size.height*0.8616322);
    path_4.cubicTo(size.width*0.8551296,size.height*0.8649483,size.width*0.8542857,size.height*0.8687720,size.width*0.8542857,size.height*0.8731003);
    path_4.lineTo(size.width*0.8542857,size.height*0.9331307);
    path_4.lineTo(size.width*0.8286746,size.height*0.9331307);
    path_4.close();
    path_4.moveTo(size.width*0.9165767,size.height*0.9729210);
    path_4.cubicTo(size.width*0.9133307,size.height*0.9729210,size.width*0.9102831,size.height*0.9726201,size.width*0.9074365,size.height*0.9720213);
    path_4.cubicTo(size.width*0.9046323,size.height*0.9714711,size.width*0.9023069,size.height*0.9707568,size.width*0.9004630,size.height*0.9698815);
    path_4.lineTo(size.width*0.9062354,size.height*0.9479149);
    path_4.cubicTo(size.width*0.9092407,size.height*0.9489726,size.width*0.9119471,size.height*0.9495502,size.width*0.9143519,size.height*0.9496413);
    path_4.cubicTo(size.width*0.9167963,size.height*0.9497325,size.width*0.9189021,size.height*0.9490881,size.width*0.9206640,size.height*0.9477052);
    path_4.cubicTo(size.width*0.9224683,size.height*0.9463252,size.width*0.9239312,size.height*0.9439757,size.width*0.9250529,size.height*0.9406596);
    path_4.lineTo(size.width*0.9265582,size.height*0.9361702);
    path_4.lineTo(size.width*0.8934286,size.height*0.8270243);
    path_4.lineTo(size.width*0.9203651,size.height*0.8270243);
    path_4.lineTo(size.width*0.9394841,size.height*0.9049453);
    path_4.lineTo(size.width*0.9404471,size.height*0.9049453);
    path_4.lineTo(size.width*0.9597460,size.height*0.8270243);
    path_4.lineTo(size.width*0.9868624,size.height*0.8270243);
    path_4.lineTo(size.width*0.9509683,size.height*0.9445988);
    path_4.cubicTo(size.width*0.9492434,size.height*0.9503100,size.width*0.9468995,size.height*0.9552827,size.width*0.9439339,size.height*0.9595198);
    path_4.cubicTo(size.width*0.9410079,size.height*0.9638024,size.width*0.9372989,size.height*0.9670942,size.width*0.9328095,size.height*0.9693982);
    path_4.cubicTo(size.width*0.9283201,size.height*0.9717477,size.width*0.9229101,size.height*0.9729210,size.width*0.9165767,size.height*0.9729210);
    path_4.close();

    Paint paint4Fill = Paint()..style=PaintingStyle.fill;
    paint4Fill.color = const Color(0xff0EA5E9).withOpacity(1.0);
    canvas.drawPath(path_4,paint4Fill);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
