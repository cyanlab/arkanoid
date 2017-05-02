// Copyright (c) 2017, loinasd. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/core.dart';
import 'package:angular2_components/angular2_components.dart';

@Component(
  selector: 'main-menu',
  styleUrls: const ['main_menu.css'],
  templateUrl: 'main_menu.html',
  directives: const [materialDirectives],
  providers: const [materialProviders],
)
class MainMenu {
  /// Modal component that hosts the inner MaterialDialog in a centered overlay.
  @ViewChild('wrappingModal')
  ModalComponent wrappingModal;

  /// Name of user.
  @Input()
  String name = "";

  /// Opens the dialog.
  void open([String name]) {
    if (name != null) this.name = name;
    wrappingModal.open();
  }
}
