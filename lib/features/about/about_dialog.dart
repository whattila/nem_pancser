import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

void showInfoDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Center(
        child: Text(
          'Pancser Pizzéria',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFFD35400),
          ),
        ),
      ),
      content: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Telefonszámaink:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            Text('(27) 392 552, (30) 535 4445', style: TextStyle(fontSize: 16)),
            SizedBox(height: 12),
            Text('Éttermünk címe:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            Text('2120 Dunakeszi, Fő út 88.', style: TextStyle(fontSize: 16)),
            SizedBox(height: 12),
            Text('E-mail címünk:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            Text('info@pancserpizza.hu', style: TextStyle(fontSize: 16)),
            SizedBox(height: 12),
            Text('Rendelésfelvétel:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            Text('11:00-21:55', style: TextStyle(fontSize: 16)),
            SizedBox(height: 12),
            Text('Internet:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            Text('www.pancserpizza.hu', style: TextStyle(fontSize: 16)),
            SizedBox(height: 16),
            Text('Házhozszállítás:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            SizedBox(height: 8),
            Text(
              'Házhozszállítás Dunakeszire 300Ft. Fóton a Hársfa - 48-as Ifjúsági-Károlyi István utcák határolt területén belül 400 Ft ezen kívül eső területekre 600 Ft, Somlyóra +800 Ft. Gödön az Ady Endre - Duna út által határolt területen belül 400 Ft ezen kívül eső területekre és Újtelepre +600 Ft. Göd-Nevelekre +800 Ft. Házhozszállítás Dunakeszire 1500 Ft fölött, Fótra és Gödre 3000 Ft fölött.',
              style: TextStyle(fontSize: 10),
            ),
            SizedBox(height: 8),
            Text(
              'Házhozszállítási idő 30-120 perc. A havi akciós ajánlatainkban lévő ételeinkhez a köret nem változtatható, illetve a pizzákon a feltét nem variálható. Áfás számla igényüket, illetve a nagy címletű bankjeggyel való fizetést kérjük rendeléskor jelezzék. Áraink a csomagolás díját és az Áfát tartalmazzák. Ha bankkártyával szeretnének fizetni, kérjük rendeléskor jelezzék. Bankkártyás fizetést csak 1000 Ft fölött tudunk elfogadni.',
              style: TextStyle(fontSize: 10),
            ),
            SizedBox(height: 8),
            Text(
              'Ételeink az összetevőként jelzett allergének mellett nyomokban tartalmazhatnak további allergéneket. Allergiát vagy intoleranciát okozó anyagok és termékek késztermékben való jelenlétére vonatkozó részletes és naprakész tájékoztatást személyesen éttermünkben vagy telefonon munkatársunktól kérhet.',
              style: TextStyle(fontSize: 10),
            ),
            SizedBox(height: 8),
            Text(
              'Honlapunkon az ételeknél kötelezően feltüntetett allergének tájékoztató jellegűek, de nem hitelesített információk, így adminisztratív hibák előfordulhatnak. Minden esetben érdeklődjön munkatársunknál a részletes és naprakész tájékoztatás végett. Ebből következőleg a feltüntetett allergén összetevőkre, továbbá ezekből fakadó esetlegesen kiváltott allergiás reakciókra vonatkozóan éttermünknek tehát nem áll módjában felelősséget vállalni.',
              style: TextStyle(fontSize: 10),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => context.router.pop(),
          child: const Text('Bezárás'),
        ),
      ],
    ),
  );
}
