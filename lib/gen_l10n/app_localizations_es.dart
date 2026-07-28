// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get signIn => 'Iniciar sesión';

  @override
  String get signUp => 'Registrarse';

  @override
  String get email => 'Correo electrónico';

  @override
  String get password => 'Contraseña';

  @override
  String get emailRequired => 'Ingresa tu correo electrónico';

  @override
  String get enterValidEmail => 'Ingresa un correo electrónico válido';

  @override
  String get passwordRequired => 'Ingresa tu contraseña';

  @override
  String get hidePassword => 'Ocultar contraseña';

  @override
  String get showPassword => 'Mostrar contraseña';

  @override
  String signInFailed(String error) {
    return 'Error al iniciar sesión: $error';
  }

  @override
  String get apiEndpointNotFoundHint =>
      'El servidor no encontró la API (404). Usa la raíz del sitio sin «/api» al final; la app llama a /api/app/login sola. Si Laravel está en una subcarpeta, incluye la ruta hasta public (p. ej. https://example.com/myapp/public).';

  @override
  String get notificationsTitle => 'Notificaciones';

  @override
  String get notificationsLoadFailed =>
      'No se pudieron cargar las notificaciones. Inténtalo de nuevo.';

  @override
  String get notificationsEmpty => 'Aún no hay notificaciones.';

  @override
  String get notificationsNewMark => 'Nuevo';

  @override
  String get notificationDetailsTitle => 'Notificación';

  @override
  String get createAccount => 'Crear cuenta';

  @override
  String get name => 'Nombre';

  @override
  String get registerNameLabel => 'Ingrese nombre y apellido';

  @override
  String get nameRequired => 'Ingresa tu nombre';

  @override
  String get phone => 'Teléfono';

  @override
  String get phoneRequired => 'Ingresa tu teléfono';

  @override
  String get phoneMustStartWithPlus => 'El teléfono debe comenzar con +';

  @override
  String get enterValidPhone => 'Ingresa un número de teléfono válido';

  @override
  String get confirmPassword => 'Confirmar contraseña';

  @override
  String get passwordsDoNotMatch => 'Las contraseñas no coinciden';

  @override
  String get passwordMinLength =>
      'La contraseña debe tener al menos 8 caracteres';

  @override
  String get atLeast8Chars => 'Al menos 8 caracteres';

  @override
  String get backToSignIn => 'Volver a iniciar sesión';

  @override
  String registrationFailed(String error) {
    return 'Error al registrarse: $error';
  }

  @override
  String get loginPasswordOptionalHint =>
      'Si tu perfil fue creado por admin/importacion, deja la contrasena vacia y continua.';

  @override
  String get setPasswordTitle => 'Crear contrasena';

  @override
  String setPasswordSubtitle(String email) {
    return 'Crea una contrasena para $email';
  }

  @override
  String get passwordSetupMinLength =>
      'La contrasena debe tener al menos 6 caracteres';

  @override
  String get savePasswordAndContinue => 'Guardar contrasena y continuar';

  @override
  String passwordSetupFailed(String error) {
    return 'No se pudo crear la contrasena: $error';
  }

  @override
  String get account => 'Cuenta';

  @override
  String get editInfo => 'EDITAR INFORMACIÓN';

  @override
  String get fullName => 'Nombre';

  @override
  String get retry => 'Reintentar';

  @override
  String get accountSettings => 'Configuración de la cuenta';

  @override
  String get editProfile => 'Editar perfil';

  @override
  String get deleteAccount => 'Eliminar cuenta';

  @override
  String get deleteAccountConfirmTitle => '¿Eliminar cuenta?';

  @override
  String get deleteAccountConfirmMessage =>
      '¿Seguro que quieres eliminar tu cuenta de forma permanente? Esta acción no se puede deshacer.';

  @override
  String get deleteAccountSecondTitle => 'Qué se eliminará';

  @override
  String get deleteAccountSecondMessage =>
      'Se eliminará de forma permanente de nuestros sistemas:\n\n• Tu cuenta y perfil\n• Todos los niños vinculados a tu cuenta\n• Todas las asignaciones a eventos, progreso en etapas, entradas y comidas\n• Fotos y demás datos de los niños\n• Tu acceso a chats de eventos y notificaciones en la app\n\nAlgunos registros de pago o contables pueden conservarse cuando lo exija la ley.';

  @override
  String get deleteAccountContinue => 'Continuar';

  @override
  String get deleteAccountConfirmAction => 'Eliminar para siempre';

  @override
  String get deleteAccountWorking => 'Eliminando cuenta…';

  @override
  String get save => 'Guardar';

  @override
  String get edit => 'Editar';

  @override
  String get role => 'Rol';

  @override
  String get myChildren => 'Mis hijos';

  @override
  String get addChild => 'Agregar hijo';

  @override
  String get noChildrenAddedYet => 'Aún no has agregado hijos';

  @override
  String get ageLabel => 'Edad';

  @override
  String get settings => 'Configuración';

  @override
  String get aboutTheApp => 'Acerca de la app';

  @override
  String get aboutAppDisplayName => 'YoungFashionShow';

  @override
  String get aboutPublisherLine => 'YOUNGFASHIONSHOW';

  @override
  String get aboutVersionLabel => 'VERSIÓN';

  @override
  String get aboutReleaseDateLabel => 'FECHA DE LANZAMIENTO';

  @override
  String get aboutDevelopedByPrefix => 'Desarrollado por:';

  @override
  String get aboutDeveloperBrand => 'OWLSOLUTIONS';

  @override
  String get aboutLinkCouldNotOpen => 'No se pudo abrir el enlace.';

  @override
  String get appLanguage => 'Idioma de la app';

  @override
  String get unitsOfMeasurement => 'Unidades de medida';

  @override
  String get timeDisplayFormat => 'Formato de hora';

  @override
  String get timeFormat24Hour => '24 horas';

  @override
  String get timeFormat12Hour => '12 horas (AM/PM)';

  @override
  String get metricUnits => 'Métrico (cm, kg)';

  @override
  String get imperialUnits => 'Americano (in, lb)';

  @override
  String get systemLanguage => 'Sistema';

  @override
  String get languageRussian => 'Ruso';

  @override
  String get languageEnglish => 'Inglés';

  @override
  String get languageUkrainian => 'Ucraniano';

  @override
  String get languageSpanishUS => 'Español (EE. UU.)';

  @override
  String get addChildTitle => 'Agregar hijo';

  @override
  String get firstName => 'Nombre';

  @override
  String get gender => 'Género';

  @override
  String get genderBoy => 'Niño';

  @override
  String get genderGirl => 'Niña';

  @override
  String get lastName => 'Apellido';

  @override
  String get birthdate => 'Fecha de nacimiento';

  @override
  String get chooseDate => 'Elige la fecha';

  @override
  String get create => 'Crear';

  @override
  String get enterFirstName => 'Ingresa el nombre';

  @override
  String get mainPhoto => 'Foto principal';

  @override
  String get changePhoto => 'Cambiar';

  @override
  String get deletePhoto => 'Eliminar';

  @override
  String get addPhoto => 'Agregar foto';

  @override
  String get photoSaved => 'Foto guardada';

  @override
  String get photoDeleted => 'Foto eliminada';

  @override
  String get photoAdded => 'Foto agregada';

  @override
  String get extraPhotos => 'Fotos adicionales';

  @override
  String get cancel => 'Cancelar';

  @override
  String get clear => 'Limpiar';

  @override
  String get height => 'Estatura';

  @override
  String get weight => 'Peso';

  @override
  String get shoulders => 'Hombros';

  @override
  String get chest => 'Pecho';

  @override
  String get waist => 'Cintura';

  @override
  String get hips => 'Caderas';

  @override
  String get measurementLengthUnitCm => 'cm';

  @override
  String get measurementLengthUnitIn => 'in';

  @override
  String get currentParticipation => 'Participación actual';

  @override
  String childSubscribedBrands(String brands) {
    return 'Marcas: $brands';
  }

  @override
  String get unknownError => 'Error desconocido';

  @override
  String model(String name) {
    return 'Modelo: $name';
  }

  @override
  String get active => 'ACTIVO';

  @override
  String get familyLabel => 'FAMILY';

  @override
  String get familyJoinButton => 'UNIRSE A FAMILIA';

  @override
  String get familyJoinDialogHint => 'Ingresa el codigo familiar de 6 digitos.';

  @override
  String get familyJoinAction => 'Unirse';

  @override
  String get familyJoinInvalidCode => 'Ingresa un codigo valido de 6 digitos.';

  @override
  String get familyJoinSuccess => 'Suscripcion familiar conectada.';

  @override
  String get contractWarningTitle => 'Aviso';

  @override
  String get contractWarningFallbackText =>
      'Antes de comprar boletos, revisa y firma el contrato.';

  @override
  String get contractViewButton => 'Ver';

  @override
  String get contractPreviewTitle => 'Texto del contrato';

  @override
  String get contractSignButton => 'Firmar';

  @override
  String get contractSignatureTitle => 'Anade la firma';

  @override
  String get contractSignedSuccess => 'Contrato firmado correctamente.';

  @override
  String get journeyProgress => 'PROGRESO';

  @override
  String get journeyPreparationPhase => 'FASE DE PREPARACIÓN';

  @override
  String get journeyMainEventTitle => 'EVENTO PRINCIPAL';

  @override
  String get journeyMainEventSubtitle => 'EXCLUSIVO PASARELA';

  @override
  String stepOf(int completed, int total) {
    return 'Paso $completed de $total';
  }

  @override
  String next(String text) {
    return 'Siguiente: $text';
  }

  @override
  String get viewProgress => 'VER PROGRESO';

  @override
  String get eventSettings => 'AJUSTES DEL EVENTO';

  @override
  String get homeEventCardMyEvent => 'MI EVENTO';

  @override
  String get homeEventCardRunwayJourney => 'RECORRIDO DE PASARELA';

  @override
  String get eventSettingsPlaceholder =>
      'Pronto verás aquí los ajustes del evento.';

  @override
  String get eventSettingsConfigurationPortal => 'PORTAL DE CONFIGURACIÓN';

  @override
  String get eventSettingsMainHeadline => 'Ajustes del evento';

  @override
  String get eventSettingsFamilyButton => 'Familia';

  @override
  String get familyManageTitle => 'Familia';

  @override
  String get familyManageEnabled => 'Activar conexiones familiares';

  @override
  String get familyManageCodeLabel => 'Codigo familiar';

  @override
  String get familyManageRegenerateCode => 'Cambiar codigo';

  @override
  String get familyManageConnectionsTitle => 'Conexiones familiares activas';

  @override
  String get familyManageNoConnections =>
      'Aun no hay conexiones familiares activas.';

  @override
  String get familyManageUnknownUser => 'Usuario desconocido';

  @override
  String get eventSettingsLeaveFamilyButton => 'Desconectarse de la familia';

  @override
  String get eventSettingsLeaveFamilyConfirmTitle =>
      '?Desconectar acceso familiar?';

  @override
  String get eventSettingsLeaveFamilyConfirmText =>
      'Perderas el acceso familiar al evento hasta volver a unirte con codigo.';

  @override
  String get eventSettingsLeaveFamilySuccess =>
      'El acceso familiar se ha desconectado.';

  @override
  String get eventSettingsMealTitle => 'Selección de comidas';

  @override
  String get eventSettingsMealSubtitle =>
      'Elige un plato para el evento actual';

  @override
  String get eventSettingsMealCta => 'GESTIONAR MENÚ';

  @override
  String eventSettingsMealOrderedPcs(int count) {
    return 'Pedido: $count ud.';
  }

  @override
  String get eventSettingsMealPurchasesListHeading => 'Pedidos realizados';

  @override
  String eventSettingsMealPurchaseChildLine(String name) {
    return 'Nino/a: $name';
  }

  @override
  String get mealPurchaseIssued => 'Entregado';

  @override
  String get mealPurchaseNotIssued => 'Aun no entregado';

  @override
  String get eventSettingsRehearsalTitle => 'Reserva de ensayo';

  @override
  String get eventSettingsRehearsalSubtitle =>
      'Reserva tu plaza para el ensayo';

  @override
  String get eventSettingsRehearsalCta => 'RESERVAR';

  @override
  String get eventSettingsBrandRehearsalsHeading => 'Tus ensayos de marca';

  @override
  String get rehearsalModalTitle => 'Reserva de ensayo';

  @override
  String get rehearsalSelectDate => 'Elige fecha';

  @override
  String get rehearsalAvailableSlots => 'Horarios disponibles';

  @override
  String get rehearsalFreeLabel => 'Libres:';

  @override
  String get rehearsalNoSlotsConfigured =>
      'Aún no hay franjas de ensayo para este evento.';

  @override
  String get rehearsalLoadError =>
      'No se pudieron cargar las franjas. Inténtalo de nuevo.';

  @override
  String get rehearsalBrandNotAssigned =>
      'No hay marca asignada para este niño. La reserva de ensayos no está disponible.';

  @override
  String get rehearsalFull => 'Completo';

  @override
  String get rehearsalConfirmBooking => 'Confirmar reserva';

  @override
  String get rehearsalBookingFooterNote =>
      'Si es posible, cambia con 24 h de antelación.';

  @override
  String get rehearsalBookedTitle => 'Ensayo reservado';

  @override
  String get rehearsalChangeBooking => 'Cambiar reserva';

  @override
  String get rehearsalProgramLabel => 'Descripción';

  @override
  String get rehearsalArriveEarly => 'Llega 15 minutos antes.';

  @override
  String get rehearsalBookingSaved => 'Reserva guardada';

  @override
  String get rehearsalBookingError => 'No se pudo completar la reserva.';

  @override
  String get rehearsalSelectChild => 'Niño/a';

  @override
  String get rehearsalUpdateBooking => 'Anadir y actualizar reserva';

  @override
  String get rehearsalCancelChange => 'Cancelar';

  @override
  String get rehearsalChangeBookingLockedHint =>
      'El organizador cerró los cambios de reserva. Contacta soporte si necesitas ayuda.';

  @override
  String get rehearsalMilestoneTitle => 'Ensayo general';

  @override
  String rehearsalBrandMilestoneTitle(String brandName) {
    return 'Ensayo de marca: $brandName';
  }

  @override
  String get rehearsalBrandMilestoneShort => 'Ensayo de marca';

  @override
  String get rehearsalNextBookHint =>
      'Reserva tu ensayo en Ajustes del evento.';

  @override
  String get eventSettingsPackingTitle => 'Lista «No olvides»';

  @override
  String get eventSettingsPackingSubtitle => '';

  @override
  String get eventSettingsPackingCta => 'VER LISTA';

  @override
  String get eventPackingLoadFailed =>
      'No se pudo cargar la información. Inténtalo de nuevo.';

  @override
  String get eventPackingEmpty =>
      'Aún no se añadió información para este evento.';

  @override
  String get eventDescriptionTitle => 'Información del evento';

  @override
  String get eventProgressShowGallery => 'Galería';

  @override
  String get eventProgressCheckin => 'Check-in';

  @override
  String get eventProgressCheckinPrompt => 'Escanea para iniciar el evento';

  @override
  String get eventProgressCheckinUnavailable =>
      'El código de check-in aún no está disponible.';

  @override
  String get eventDescriptionLoadFailed =>
      'No se pudo cargar la descripción. Inténtalo de nuevo.';

  @override
  String get eventDescriptionEmpty =>
      'Aún no hay descripción de texto para este evento.';

  @override
  String get eventSettingsBrandTitle => 'Zapatos y calcetines';

  @override
  String get eventSettingsBrandSubtitle =>
      'Consulta las recomendaciones de la marca para participar en el evento';

  @override
  String get eventSettingsBrandCta => 'VER GUÍAS';

  @override
  String get brandRequirementsLoadFailed =>
      'No se pudieron cargar los requisitos de marca. Inténtalo de nuevo.';

  @override
  String get brandRequirementsEmpty =>
      'Aún no se añadieron requisitos de marca para este evento.';

  @override
  String get brandRequirementsEmptyItem =>
      'Aún no se añadió texto de requisitos para esta marca.';

  @override
  String get brandRequirementsPickBrandTitle => 'Elige una marca';

  @override
  String brandRequirementsBrandNumber(int brandId) {
    return 'Marca $brandId';
  }

  @override
  String get eventSettingsParkingTitle => 'Valet parking';

  @override
  String get eventSettingsParkingSubtitle =>
      'Abre tu pase de valet parking y el estado de llegada';

  @override
  String get eventSettingsParkingCta => 'ABRIR VALET PARKING';

  @override
  String get parkingChooseModeTitle => 'Modo valet parking';

  @override
  String get parkingChooseModeHint =>
      'Elige el estado de pantalla para probar el visual.';

  @override
  String get parkingModeInactive => 'INACTIVO';

  @override
  String get parkingModeActive => 'ACTIVO';

  @override
  String get parkingInactiveHeadline => 'VALET PARKING NO ACTIVO';

  @override
  String get parkingInactiveBody =>
      'EL VALET PARKING APARECERA AQUI DESPUES DE COMPRAR EL TICKET.';

  @override
  String get parkingInactiveBuyCta => 'COMPRAR';

  @override
  String get parkingInactiveVipBody =>
      'PARA VIP VALET PARKING — RESERVA UNA PLAZA PARA TU VEHICULO.';

  @override
  String get parkingInactiveVipBookCta => 'RESERVAR VALET PARKING';

  @override
  String get parkingPayForParkingCta => 'PAGAR VALET PARKING';

  @override
  String get parkingVipQuotaNextPaymentBody =>
      'YA HAS USADO LOS VALETS DE CORTESIA PARA ESTE EVENTO. AUN PUEDES ANADIR UNA PLAZA AL PRECIO REGULAR.';

  @override
  String parkingFreeTicketsQuotaLine(int used, int quota, int remaining) {
    return 'Valet de cortesia: $used de $quota usados (quedan $remaining)';
  }

  @override
  String get parkingActiveTicketLabel => 'TICKET';

  @override
  String get parkingTicketMock1 => 'TICKET A1 · MODELO';

  @override
  String get parkingTicketMock2 => 'TICKET B7 · INVITADO';

  @override
  String get parkingActiveValetLabel => 'VALET SERVICE';

  @override
  String get parkingActiveStatusLine => 'VALET PARKING ACTIVO';

  @override
  String get parkingActiveShowEntryPointCta => 'MOSTRAR PUNTO DE ENTRADA';

  @override
  String get parkingActiveCarLabel => 'AUTOMOVIL';

  @override
  String get parkingActiveRegistrationNumberLabel => 'NUMERO DE PLACA';

  @override
  String get parkingCreateTicketTitle => 'Crear ticket';

  @override
  String get parkingCreateEventLabel => 'Evento';

  @override
  String get parkingCreateAccountNameLabel => 'Nombre';

  @override
  String get parkingCreateCarModelLabel => 'MARCA Y MODELO';

  @override
  String get parkingCreateCarModelHint => 'Por ejemplo: Ford Mustang';

  @override
  String get parkingCreatePlateNumberLabel => 'NUMERO DE PLACA';

  @override
  String get parkingCreatePlateNumberHint => 'Por ejemplo: CA 7JXK921';

  @override
  String get parkingCreateRepeatPlateNumberLabel => 'REPITE EL NUMERO DE PLACA';

  @override
  String get parkingCreateRepeatPlateNumberHint =>
      'Vuelve a escribir el numero de placa';

  @override
  String get parkingCreatePlateNumberMismatch =>
      'Los numeros de placa no coinciden';

  @override
  String get parkingCreateBuyCta => 'COMPRAR';

  @override
  String get parkingCreateBookCta => 'RESERVAR VALET PARKING';

  @override
  String get parkingCheckoutInBrowser => 'Completa el pago en tu navegador.';

  @override
  String get parkingPurchasedWithoutPayment => 'Ticket comprado con exito.';

  @override
  String get parkingVipBooked => 'Valet parking VIP reservado con exito.';

  @override
  String get parkingCheckoutError =>
      'No se pudo iniciar el pago de valet parking. Intentalo de nuevo.';

  @override
  String get clientTicketServiceUnavailableTitle => 'Servicio no disponible';

  @override
  String get clientTicketServiceUnavailableBody =>
      'Este servicio de entradas no esta activo ahora.';

  @override
  String get parkingActivePassLabel => 'CODIGO';

  @override
  String get eventSettingsChatTitle => 'Chat grupal';

  @override
  String get eventSettingsChatSubtitle =>
      'Chat grupal con participantes del grupo y managers';

  @override
  String get eventSettingsChatCta => 'ABRIR CHAT';

  @override
  String get chatRoomsLoadFailed =>
      'No se pudieron cargar las salas de chat. Inténtalo de nuevo.';

  @override
  String get chatNoRooms =>
      'Aún no hay salas de chat para tus marcas en este evento.';

  @override
  String get chatNoMessagesYet => 'Sin mensajes todavía';

  @override
  String get chatLoadFailed =>
      'No se pudieron cargar los mensajes. Inténtalo de nuevo.';

  @override
  String get chatSendFailed =>
      'No se pudo enviar el mensaje. Inténtalo de nuevo.';

  @override
  String get chatMessagePlaceholder => 'Mensaje al grupo...';

  @override
  String get chatReply => 'Responder';

  @override
  String get chatReplyCancel => 'Cancelar';

  @override
  String chatReplyingTo(String name) {
    return 'Respondiendo a $name';
  }

  @override
  String get chatReplyPreviewPhoto => 'Foto';

  @override
  String get chatEdit => 'Editar';

  @override
  String get chatDelete => 'Eliminar';

  @override
  String get chatDeleteTitle => '?Eliminar mensaje?';

  @override
  String get chatDeleteMessageConfirm => 'Esta accion no se puede deshacer.';

  @override
  String get chatDeleteFailed =>
      'No se pudo eliminar el mensaje. Intentalo de nuevo.';

  @override
  String get chatEditFailed =>
      'No se pudo editar el mensaje. Intentalo de nuevo.';

  @override
  String get chatEditingLabel => 'Editando mensaje';

  @override
  String get chatCancelEdit => 'Cancelar edicion';

  @override
  String eventSettingsChatMoreParticipants(int count) {
    return '+$count';
  }

  @override
  String get mealChoiceTitle => 'Elegir comida';

  @override
  String get mealSelectChildLabel => 'Niño/a';

  @override
  String get mealSelectDishLabel => 'Plato';

  @override
  String get mealSave => 'PEDIR';

  @override
  String get mealNoMealsConfigured => 'Aún no hay platos para este evento.';

  @override
  String get mealSaved => 'Guardado';

  @override
  String get mealSaveError => 'No se pudo guardar. Inténtalo de nuevo.';

  @override
  String get mealOrdersClosed => 'El plazo para elegir el menú está cerrado';

  @override
  String get mealPaid => 'Pagado';

  @override
  String get mealPaidDetail => 'El menú de este evento está pagado.';

  @override
  String get mealPayInBrowser =>
      'Completa el pago en el navegador y vuelve a la app.';

  @override
  String get mealCheckoutError =>
      'No se pudo iniciar el pago. Inténtalo de nuevo.';

  @override
  String get mealAwaitingPayment => 'Pedido registrado — pendiente de pago';

  @override
  String get mealAwaitingPaymentDetail =>
      'Tu plato esta guardado. Termina el pago en el navegador; el estado se actualizara cuando Stripe lo confirme.';

  @override
  String get mealPaymentContinue => 'Continuar pago';

  @override
  String get mealPaymentCancel => 'Cancelar pago';

  @override
  String get mealPaymentStartAgain => 'Iniciar pago de nuevo';

  @override
  String get mealPaymentCanceled =>
      'Pago cancelado. Puedes empezar de nuevo cuando quieras.';

  @override
  String get mealPaymentStatusLoadError =>
      'No se pudo cargar el estado del pago. Intentalo de nuevo.';

  @override
  String get noActiveEvents => 'No hay eventos activos';

  @override
  String get becomeModelTitle => 'Comienza la carrera de modelo de tu hijo hoy';

  @override
  String get becomeAModel => 'SER MODELO';

  @override
  String get latestHighlights => 'Últimos destacados';

  @override
  String get viewAll => 'VER TODO';

  @override
  String get quickActions => 'Acciones rápidas';

  @override
  String get fillOutApplication => 'Completar\nsolicitud';

  @override
  String get upcomingShows => 'Próximos\nshows';

  @override
  String get manageKids => 'Mis\nhijos';

  @override
  String get navHome => 'Inicio';

  @override
  String get navEvents => 'Eventos';

  @override
  String get eventsYoutubeLiveButton => 'YouTube en directo';

  @override
  String get eventsYoutubeLiveInvalidUrl =>
      'No se pudo abrir este enlace de YouTube.';

  @override
  String get eventsYoutubeLiveOpenExternally => 'Abrir en YouTube';

  @override
  String get navProfile => 'Perfil';

  @override
  String get navInfo => 'Información';

  @override
  String get continueButton => 'Continuar';

  @override
  String get loading => 'Cargando...';

  @override
  String get signOut => 'Cerrar sesión';

  @override
  String get tokenValidNext => 'Sesión válida. Siguiente: Inicio.';

  @override
  String get homePageTitle => 'Inicio';

  @override
  String youAreSignedIn(String name) {
    return 'Has iniciado sesión$name.';
  }

  @override
  String yourRole(String role) {
    return 'Tu rol: $role';
  }

  @override
  String get phoneHint => '+1234567890';

  @override
  String get enterValidEmailShort => 'Ingresa un correo válido';

  @override
  String get phoneMustStartWithPlusShort => 'El teléfono debe comenzar con +';

  @override
  String get comingSoon => 'Próximamente';

  @override
  String get hello => 'Hola';

  @override
  String helloName(String name) {
    return 'Hola, $name';
  }

  @override
  String get noRolesAssigned =>
      'Aún no tienes roles asignados. Contacta a la administración.';

  @override
  String signedInAs(String name) {
    return 'Sesión iniciada como $name';
  }

  @override
  String get staff => 'Personal';

  @override
  String get birthdateDialogTitle => 'Fecha de nacimiento';

  @override
  String get nextShowsTitle => 'Próximos shows';

  @override
  String get nextShowsSeason => 'Temporada 2026';

  @override
  String get details => 'Detalles';

  @override
  String get contact => 'Contacto';

  @override
  String get registrationOpen => 'Registro abierto';

  @override
  String get myTicketsButton => 'MIS ENTRADAS';

  @override
  String get myTicketsTitle => 'Mis entradas';

  @override
  String get selectEventForTickets => 'Selecciona el evento';

  @override
  String get ticketsMomName => 'Nombre del padre/madre';

  @override
  String get ticketsEventDate => 'Fecha';

  @override
  String get ticketsOpenPdf => 'ABRIR';

  @override
  String get ticketsPdfUnavailable => 'PDF aún no disponible';

  @override
  String get ticketsBuy => 'COMPRAR ENTRADA';

  @override
  String get ticketsBuyNoLink =>
      'No hay enlace de compra. Añade la URL de la tienda de entradas para este evento en el admin o en la web en Info.';

  @override
  String get ticketsBuyCouldNotOpen => 'No se pudo abrir el enlace.';

  @override
  String get ticketsBuySubtitle => 'Asientos VIP y estándar disponibles';

  @override
  String get ticketsBuyEmailHint =>
      'Tus entradas llegarán al correo electrónico indicado al comprar el billete.';

  @override
  String get extraTicketButton => 'OPEN BAR';

  @override
  String get extraTicketSelectEventFirst => 'Selecciona primero un evento.';

  @override
  String get extraTicketNoActiveHeadline => 'NO HAY BEVERAGE PACKAGE ACTIVOS';

  @override
  String get extraTicketBuyCta => 'COMPRAR';

  @override
  String get extraTicketAccessOpen => 'ACCESO A BEVERAGE PACKAGE ABIERTO';

  @override
  String get extraTicketCheckoutInBrowser =>
      'Completa el pago en tu navegador.';

  @override
  String get extraTicketCheckoutError =>
      'No se pudo iniciar el pago de BEVERAGE PACKAGE. Intentalo de nuevo.';

  @override
  String get backstageTicketButton => 'BACKSTAGE PASS';

  @override
  String get backstageTicketSelectEventFirst => 'Selecciona primero un evento.';

  @override
  String get backstageTicketNoActiveHeadline => 'NO HAY BACKSTAGE PASS ACTIVOS';

  @override
  String get backstageTicketBuyCta => 'COMPRAR';

  @override
  String get backstageTicketAccessOpen => 'ACCESO A BACKSTAGE PASS ABIERTO';

  @override
  String get backstageTicketCheckoutInBrowser =>
      'Completa el pago en tu navegador.';

  @override
  String get backstageTicketCheckoutError =>
      'No se pudo iniciar el pago de BACKSTAGE PASS. Intentalo de nuevo.';

  @override
  String get ticketsNoEvents => 'Aún no hay eventos con entradas';

  @override
  String get ticketsNoneForEvent => 'No hay entradas para este evento';

  @override
  String get ticketsLoadError => 'No se pudieron cargar las entradas';

  @override
  String get ticketsEventsLoadError => 'No se pudieron cargar los eventos';

  @override
  String get faqBrandCatalogTitle => 'Marcas de ropa';

  @override
  String get pdfViewerTitle => 'Entrada';

  @override
  String get contactFormLinkMissing =>
      'No hay enlace al formulario. Añade la URL en Ajustes generales de la app en el panel.';

  @override
  String get infoHubTitle => 'Centro de información';

  @override
  String get infoMenuAboutYfs => 'Acerca de YFS';

  @override
  String get infoMenuGeneralFaq => 'FAQ general';

  @override
  String get infoMenuContactManager => 'Contactar al gestor';

  @override
  String get infoFooterBrand => 'YFS';

  @override
  String get infoFooterCopyright =>
      '© 2024 Young Fashion Series. Todos los derechos reservados.';

  @override
  String parentProgressLabel(int completed, int total) {
    return 'Progreso del padre/madre: $completed/$total';
  }

  @override
  String get appUpdateRequiredMessage =>
      'Actualiza la aplicación para continuar.';

  @override
  String get appUpdateButton => 'Actualizar aplicación';

  @override
  String get showAll => 'Ver todo';

  @override
  String get staffNoneSelected => '-- Ninguno --';

  @override
  String get staffRoleInactive => 'INACTIVA';

  @override
  String get staffWorkerStatusRefreshFailed =>
      'No se pudo actualizar el estado del rol. Comprueba la conexión.';

  @override
  String get staffScanRoleInactive =>
      'Este rol fue desactivado en el panel. El escaneo no está disponible.';

  @override
  String staffScanFailed(String error) {
    return 'Error al escanear: $error';
  }

  @override
  String get staffScanSelectEventStageFirst =>
      'Selecciona el evento y la etapa activos en Ajustes del personal antes de escanear.';

  @override
  String get staffScanProcessed => 'Escaneo procesado';

  @override
  String get chatCouldNotPickPhoto => 'No se pudo elegir la foto';

  @override
  String get staffChildProfileTitle => 'Perfil del niño';

  @override
  String get staffEventTimelineButton => 'TIMELINE';

  @override
  String get staffLookButton => 'LOOK';

  @override
  String get staffLookTitle => 'Look';

  @override
  String get staffLookSelectBrand => 'Seleccionar marca';

  @override
  String get staffLookNotFound => 'Look no encontrado';

  @override
  String get staffLookLoadFailed => 'No se pudo cargar el look';

  @override
  String get staffLookNoBrand => 'El niño no tiene marca asignada';

  @override
  String get staffEventTimelineTitle => 'Timeline del evento';

  @override
  String get staffParentTimelineButton1 => 'TIMELINE DEL PADRE 1';

  @override
  String get staffParentTimelineButton2 => 'TIMELINE DEL PADRE 2';

  @override
  String get staffParentTimelineTitle1 => 'Timeline del padre 1';

  @override
  String get staffParentTimelineTitle2 => 'Timeline del padre 2';

  @override
  String get staffCurrentStage => 'ETAPA ACTUAL';

  @override
  String staffProgressPercentComplete(int percent) {
    return '$percent% completado';
  }

  @override
  String get staffChildDetailEmpty =>
      'No hay datos del niño en la base de datos';

  @override
  String get staffLoadFailed => 'Error al cargar';

  @override
  String get staffGuardianLiaison => 'ENLACE CON TUTORES';

  @override
  String get staffAssignedBrand => 'MARCA ASIGNADA';

  @override
  String get staffAssignedPackage => 'PAQUETE';

  @override
  String get staffSupervisor => 'SUPERVISOR';

  @override
  String get staffSectionCoreDetails => 'Datos principales';

  @override
  String get staffSectionParentContact => 'Contacto del padre/madre';

  @override
  String staffPhaseWithName(String stageName) {
    return 'Fase: $stageName';
  }

  @override
  String get staffNoCurrentStage => 'Sin etapa actual';

  @override
  String staffAgeYearsOld(int age) {
    return '$age años';
  }

  @override
  String get staffNotesLabel => 'Notas';

  @override
  String get staffParentRoleDefault => 'Padre/madre';

  @override
  String get contactManagerIntro =>
      'Puedes dejar un mensaje sobre cualquier consulta; nos pondremos en contacto contigo lo antes posible.';

  @override
  String get contactManagerMessageLabel => 'Tu mensaje';

  @override
  String get contactManagerMessageRequired => 'Escribe tu mensaje';

  @override
  String get contactManagerSend => 'Enviar';

  @override
  String get contactManagerSent =>
      'Tu mensaje se ha enviado. Nos pondremos en contacto contigo pronto.';

  @override
  String get contactManagerSendFailed =>
      'No se pudo enviar. Inténtalo más tarde.';

  @override
  String get contactManagerServiceUnavailable =>
      'El contacto no está disponible temporalmente. Inténtalo más tarde.';

  @override
  String get close => 'Cerrar';

  @override
  String get staffPortalTitle => 'Portal del personal';

  @override
  String get staffActiveEvent => 'Evento activo';

  @override
  String get staffActiveStage => 'Etapa activa';

  @override
  String get staffSelectEvent => 'Selecciona evento';

  @override
  String get staffSelectEventInSettings =>
      'Selecciona un evento en Ajustes del personal';

  @override
  String get staffSelectStage => 'Selecciona etapa';

  @override
  String staffPreparatoryStageLabel(String stageName) {
    return 'Prep: $stageName';
  }

  @override
  String get staffScanButton => 'ESCANEAR';

  @override
  String get staffQrCheckButton => 'QR CHECK';

  @override
  String get staffParkingButton => 'VALET PARKING';

  @override
  String get staffExtraZoneButton => 'BEVERAGE PACKAGE';

  @override
  String get staffBackstageButton => 'BACKSTAGE PASS';

  @override
  String get staffRehearsalCheckinButton => 'CHECK-IN ENSAYO';

  @override
  String get staffTapToScanModelLanyard =>
      'TOCA PARA ESCANEAR EL GAFETE DE LA MODELO';

  @override
  String get staffTapToScanParkingQr =>
      'TOCA PARA ESCANEAR QR DE VALET PARKING';

  @override
  String get staffTapToScanExtraZoneQr =>
      'TOCA PARA ESCANEAR QR DE BEVERAGE PACKAGE';

  @override
  String get staffTapToScanBackstageQr =>
      'TOCA PARA ESCANEAR QR DE BACKSTAGE PASS';

  @override
  String get staffTapToScanRehearsalCheckinQr =>
      'TOCA PARA ESCANEAR QR DE CHECK-IN DE ENSAYO';

  @override
  String get staffMealHandoutButton => 'COMIDAS';

  @override
  String get staffTapToScanMealBadge =>
      'TOCA PARA ESCANEAR BRAZALETE (NINO O PADRE)';

  @override
  String get staffMealIssueTitle => 'Entrega de almuerzos';

  @override
  String get staffMealIssueNoMeals => 'No hay almuerzos pedidos con este pase.';

  @override
  String get staffMealIssueHandOut => 'Entregar';

  @override
  String get staffMealIssueSuccess => 'Marcado como entregado.';

  @override
  String staffMealIssueFailure(String error) {
    return 'Error: $error';
  }

  @override
  String get staffMealIssueAlreadyIssued => 'ya entregado';

  @override
  String get staffTapToScanQrCheck =>
      'TOCA PARA ESCANEAR BRAZALETE — ETAPA Y FICHA';

  @override
  String get staffCurrentTask => 'Tarea actual';

  @override
  String get staffUtilitiesAndTools => 'UTILIDADES Y HERRAMIENTAS';

  @override
  String get staffScanForInfoTitle => 'Escanear para info';

  @override
  String get staffScanForInfoSubtitle => 'Escaner general de activos e ID';

  @override
  String get staffToiletRequest => 'Solicitud de bano';

  @override
  String get staffRestroomLog => 'REGISTRO DE BANO';

  @override
  String get staffSettingsCardTitle => 'Ajustes del personal';

  @override
  String get staffPreferences => 'PREFERENCIAS';

  @override
  String get staffSupervisorRoleTitle => 'Rol de supervisor';

  @override
  String get staffSupervisorRoleDescription =>
      'Gestiona el flujo del evento, supervisa a los fotografos y asegura que todos los ninos sean registrados. Sigue el progreso en tiempo real.';

  @override
  String get staffCurrentStageLabel => 'Etapa actual';

  @override
  String get staffNoMainStagesAvailable =>
      'No hay etapas principales disponibles para este evento.';

  @override
  String get staffChildRegistry => 'Registro de ninos';

  @override
  String staffChildrenListed(int count) {
    return '$count ninos en lista';
  }

  @override
  String get staffSelectActiveEventForRegistry =>
      'Selecciona un evento activo en Ajustes para ver el registro de ninos.';

  @override
  String get staffNoChildrenAssigned =>
      'No hay ninos asignados para este evento.';

  @override
  String get staffRehearsalAdminSlotsTitle => 'Slots de ensayo';

  @override
  String get staffRehearsalCheckinActiveSlot => 'Slot de ensayo activo';

  @override
  String get staffRehearsalAdminSelectSlot => 'Selecciona un slot de ensayo';

  @override
  String get staffRehearsalCheckinSelectSlotFirst =>
      'Primero selecciona un slot de ensayo';

  @override
  String get staffRehearsalCheckinParticipantsTable => 'Tabla de participantes';

  @override
  String get staffRehearsalCheckinParticipantsTitle => 'Participantes';

  @override
  String get staffBrandRehearsalActiveStage => 'Ensayo de marca activo';

  @override
  String get staffBrandRehearsalSelectWorkplaceTitle =>
      'Selecciona el lugar de trabajo';

  @override
  String get staffBrandRehearsalSelectWorkplaceHint =>
      'Selecciona el ensayo de marca en el que trabajas.';

  @override
  String get staffBrandRehearsalActivate => 'Activar';

  @override
  String get staffBrandRehearsalSelectStageFirst =>
      'Primero selecciona el ensayo de marca';

  @override
  String get staffBrandRehearsalCheckinButton => 'CHECK-IN ENSAYO\nDE MARCA';

  @override
  String get staffTapToScanBrandRehearsal => 'ESCANEA CHECK-IN O BADGE';

  @override
  String get staffRehearsalAdminBookedChildrenTitle => 'Ninos inscritos';

  @override
  String get staffRehearsalAdminNoSlots =>
      'No hay slots de ensayo creados para este evento.';

  @override
  String get staffRehearsalAdminNoChildrenForSlot =>
      'No hay ninos inscritos en este slot.';

  @override
  String get staffGiftControlButton => 'CONTROL';

  @override
  String get staffGiftIssueSelectWorkplaceTitle => 'Selecciona la etapa';

  @override
  String get staffGiftIssueSelectWorkplaceHint =>
      'Elige la etapa de regalos en la que trabajas.';

  @override
  String get staffGiftIssueSelectStageFirst =>
      'Primero selecciona la etapa de regalos';

  @override
  String get staffGiftControlTitle => 'Control de entrega de regalos';

  @override
  String get staffGiftControlSearchHint => 'Buscar por nombre';

  @override
  String get staffGiftControlSelectSlot => 'Filtrar por slot de ensayo';

  @override
  String get staffGiftControlAllSlots => 'Todos los slots de ensayo';

  @override
  String get staffGiftControlSelectStage => 'Selecciona la etapa del reporte';

  @override
  String get staffGiftControlFilterAll => 'Todos';

  @override
  String get staffGiftControlFilterPassed => 'Completado';

  @override
  String get staffGiftControlFilterNotPassed => 'No completado';

  @override
  String get staffGiftControlNoChildren =>
      'No hay ninos para los filtros seleccionados.';

  @override
  String get staffTableProfile => 'PERFIL';

  @override
  String get staffTableName => 'NOMBRE';

  @override
  String get staffTableStatus => 'ESTADO';

  @override
  String get staffTableAction => 'ACCION';

  @override
  String get staffYes => 'Si';

  @override
  String get staffNo => 'No';

  @override
  String get staffRoleHostessTitle => 'Rol: hostess';

  @override
  String get staffRoleHostessPlaceholder =>
      'La pantalla del rol hostess se anadira mas tarde.';

  @override
  String get staffRoleInterviewTitle => 'Rol: entrevista';

  @override
  String get staffRoleInterviewPlaceholder =>
      'La pantalla del rol entrevista se anadira mas tarde.';

  @override
  String get staffRoleLunchesTitle => 'Rol: almuerzos';

  @override
  String get staffRoleLunchesPlaceholder =>
      'La pantalla del rol almuerzos se anadira mas tarde.';

  @override
  String get staffRoleSuperadminTitle => 'Rol: superadmin';

  @override
  String get staffRoleSuperadminPlaceholder =>
      'La pantalla del rol superadmin se anadira mas tarde.';

  @override
  String get staffRoleRehearsalAdminTitle => 'Rol: admin de ensayos';

  @override
  String get staffRoleRehearsalAdminPlaceholder =>
      'La pantalla del rol admin de ensayos se anadira mas tarde.';

  @override
  String get staffNavHome => 'Inicio';

  @override
  String get staffNavEvent => 'Evento';

  @override
  String get staffNavMore => 'Mas';

  @override
  String get staffAccessBadge => 'ACCESO DE PERSONAL';

  @override
  String get staffVenueAndContact => 'Sede y contacto';

  @override
  String get staffMainOffice => 'Oficina principal';

  @override
  String get staffSecurity => 'Seguridad';

  @override
  String get staffScanHeaderParking => 'Escaneo de valet parking';

  @override
  String get staffScanHeaderExtraZone => 'Entrada a BEVERAGE PACKAGE';

  @override
  String get staffScanHeaderBackstage => 'Entrada a BACKSTAGE PASS';

  @override
  String get staffScanHeaderRehearsalCheckin => 'Check-in de ensayo';

  @override
  String get staffScanHeaderInfo => 'Escanear para info';

  @override
  String get staffScanHeaderQr => 'Escanear codigo QR';

  @override
  String get staffScanHintParking =>
      'Escanea el QR de valet parking para mostrar datos del ticket';

  @override
  String get staffScanHintExtraZone =>
      'Escanea el QR de BEVERAGE PACKAGE para permitir entrada';

  @override
  String get staffScanHintBackstage =>
      'Escanea el QR de BACKSTAGE PASS para permitir entrada';

  @override
  String get staffScanHintRehearsalCheckin =>
      'Escanea QR de check-in del nino para cerrar el paso de ensayo';

  @override
  String get staffScanHintInfo =>
      'Escanea gafete de nino o padre para ver el perfil';

  @override
  String get staffScanHintQr => 'Alinea el codigo QR dentro del marco';

  @override
  String get staffScanHeaderQrCheck => 'Verificacion QR';

  @override
  String get staffScanHintQrCheck =>
      'Escanea el brazalete del nino para marcar la etapa y abrir la ficha';

  @override
  String get staffQrCheckSuccessTitle => 'Etapa marcada';

  @override
  String get staffQrCheckSuccessContinue => 'Continuar';

  @override
  String get staffScanErrorTitle => 'Error de escaneo';

  @override
  String get staffScanErrorUnknown => 'Error de escaneo desconocido.';

  @override
  String get staffParkingTicketTitle => 'Ticket de valet parking';

  @override
  String get staffExtraZonePassTitle => 'Pase de BEVERAGE PACKAGE';

  @override
  String get staffExtraZoneScanResultTitle => 'Resultado del escaneo';

  @override
  String get staffExtraZoneResultNotFound =>
      'CODIGO NO ENCONTRADO EN LA BASE DE DATOS';

  @override
  String get staffExtraZoneResultAccessGranted =>
      'CODIGO ACEPTADO, ACCESO PERMITIDO';

  @override
  String get staffExtraZoneResultAccessClosed =>
      'CODIGO ACEPTADO, PERO ACCESO CERRADO';

  @override
  String get staffBackstageScanResultTitle => 'Resultado del escaneo';

  @override
  String get staffBackstageResultNotFound =>
      'CODIGO NO ENCONTRADO EN LA BASE DE DATOS';

  @override
  String get staffBackstageResultAccessGranted =>
      'CODIGO ACEPTADO, ACCESO PERMITIDO';

  @override
  String get staffBackstageResultAccessClosed =>
      'CODIGO ACEPTADO, PERO ACCESO CERRADO';

  @override
  String get staffRehearsalCheckinScanResultTitle => 'Resultado del escaneo';

  @override
  String get staffRehearsalCheckinResultNotFound =>
      'CODIGO DE CHECK-IN NO ENCONTRADO';

  @override
  String get staffRehearsalCheckinResultWrongSlot =>
      'EL NINO NO ESTA INSCRITO EN ESTE SLOT';

  @override
  String get staffRehearsalCheckinResultAlreadyClosed =>
      'EL CHECK-IN DE ENSAYO YA ESTA CERRADO';

  @override
  String get staffRehearsalCheckinResultClosedNow =>
      'CHECK-IN DE ENSAYO CERRADO';

  @override
  String get staffRehearsalCheckinFieldChild => 'Nino';

  @override
  String get staffRehearsalCheckinFieldSlot => 'Slot';

  @override
  String get staffParkingFieldEvent => 'Evento';

  @override
  String get staffParkingFieldClient => 'Cliente';

  @override
  String get staffParkingFieldCar => 'Auto';

  @override
  String get staffParkingFieldPlateNumber => 'Placa';

  @override
  String get staffParkingFieldVipClient => 'Cliente VIP';

  @override
  String get staffShowProgressTitle => 'Progreso del show';

  @override
  String get staffCouldNotOpenDialer =>
      'No se pudo abrir el marcador telefonico';

  @override
  String get staffRealtimeTracking => 'SEGUIMIENTO EN TIEMPO REAL';

  @override
  String get staffEstimatedCompletion => 'COMPLETADO ESTIMADO';

  @override
  String get staffNoMainStagesInPlan =>
      'Aun no hay etapas principales en el plan.';

  @override
  String get staffStatusDone => 'HECHO';

  @override
  String get staffStatusInProgress => 'EN PROCESO';

  @override
  String get staffStatusPending => 'PENDIENTE';

  @override
  String get staffContactDetails => 'Datos de contacto';

  @override
  String get staffPrimaryParent => 'PADRE/MADRE PRINCIPAL';

  @override
  String staffIdLabel(String id) {
    return 'ID de personal: $id';
  }

  @override
  String get staffSwitchRole => 'Cambiar rol';

  @override
  String staffCurrentRoleLabel(String role) {
    return 'ACTUAL: $role';
  }

  @override
  String get staffRoleSubtitleScan => 'Escaneo QR y flujo de etapas';

  @override
  String get staffRoleSubtitleQrCheck =>
      'Marca etapa con brazalete y ficha del nino';

  @override
  String get staffRoleSubtitleSupervisor => 'Acceso completo y gestion';

  @override
  String get staffRoleSubtitleHostess => 'Soporte de invitados y zonas';

  @override
  String get staffRoleSubtitleParking => 'Valet parking: flujo y acceso';

  @override
  String get staffRoleSubtitleExtraZone => 'Acceso a BEVERAGE PACKAGE';

  @override
  String get staffRoleSubtitleBackstage => 'Acceso a BACKSTAGE PASS';

  @override
  String get staffRoleSubtitleRehearsalAdmin => 'Administracion de ensayos';

  @override
  String get staffRoleSubtitleRehearsalCheckin =>
      'Escaneo check-in por slots de ensayo';

  @override
  String get staffRoleSubtitleGiftIssue => 'Control de entrega de regalos';

  @override
  String get staffRoleSubtitleInterview => 'Flujo de entrevistas';

  @override
  String get staffRoleSubtitleLunches => 'Comidas y almuerzos';

  @override
  String get staffRoleSubtitleSuperadmin => 'Herramientas de superadmin';

  @override
  String get staffRoleSubtitlePhotographer =>
      'Escaneo QR con selector de etapa foto';

  @override
  String get staffRoleSubtitleStylist => 'Vestuario y maquillaje';

  @override
  String get staffHostessEntryMode => 'ENTRADA';

  @override
  String get staffHostessExitMode => 'SALIDA';

  @override
  String get staffHostessEntryHint =>
      'Escanea check-in o badge del nino para cerrar la etapa seleccionada y sincronizar Family Look';

  @override
  String get staffHostessExitHint =>
      'Escanea badge de nino o padre, revisa el progreso y cierra la etapa de salida';

  @override
  String get staffHostessEntryResultTitle => 'Resultado de escaneo de entrada';

  @override
  String get staffHostessExitResultTitle => 'Resultado de escaneo de salida';

  @override
  String get staffHostessFieldChildName => 'Nombre';

  @override
  String get staffHostessFieldParent => 'Padre/Madre';

  @override
  String get staffHostessFieldBrandsAndSupervisors => 'Marcas y supervisores';

  @override
  String get staffHostessFieldFamilyLook => 'Family Look';

  @override
  String get staffHostessFamilyLookEnabled => 'Family Look activado';

  @override
  String get staffHostessFieldStages => 'Etapas';

  @override
  String get staffHostessCloseEventAction => 'Cerrar evento';

  @override
  String get staffHostessStageAlreadySelectedOtherMode =>
      'Esta etapa ya esta seleccionada para el otro modo de hostess.';

  @override
  String staffHostessRequiredProgress(int completed, int total) {
    return 'Etapas obligatorias: $completed/$total';
  }
}

/// The translations for Spanish Castilian, as used in the United States (`es_US`).
class AppLocalizationsEsUs extends AppLocalizationsEs {
  AppLocalizationsEsUs() : super('es_US');

  @override
  String get signIn => 'Iniciar sesión';

  @override
  String get signUp => 'Registrarse';

  @override
  String get email => 'Correo electrónico';

  @override
  String get password => 'Contraseña';

  @override
  String get emailRequired => 'Ingresa tu correo electrónico';

  @override
  String get enterValidEmail => 'Ingresa un correo electrónico válido';

  @override
  String get passwordRequired => 'Ingresa tu contraseña';

  @override
  String get hidePassword => 'Ocultar contraseña';

  @override
  String get showPassword => 'Mostrar contraseña';

  @override
  String signInFailed(String error) {
    return 'Error al iniciar sesión: $error';
  }

  @override
  String get apiEndpointNotFoundHint =>
      'El servidor no encontró la API (404). Usa la raíz del sitio sin «/api» al final; la app llama a /api/app/login sola. Si Laravel está en una subcarpeta, incluye la ruta hasta public (p. ej. https://example.com/myapp/public).';

  @override
  String get notificationsTitle => 'Notificaciones';

  @override
  String get notificationsLoadFailed =>
      'No se pudieron cargar las notificaciones. Inténtalo de nuevo.';

  @override
  String get notificationsEmpty => 'Aún no hay notificaciones.';

  @override
  String get notificationsNewMark => 'Nuevo';

  @override
  String get notificationDetailsTitle => 'Notificación';

  @override
  String get createAccount => 'Crear cuenta';

  @override
  String get name => 'Nombre';

  @override
  String get registerNameLabel => 'Ingrese nombre y apellido';

  @override
  String get nameRequired => 'Ingresa tu nombre';

  @override
  String get phone => 'Teléfono';

  @override
  String get phoneRequired => 'Ingresa tu teléfono';

  @override
  String get phoneMustStartWithPlus => 'El teléfono debe comenzar con +';

  @override
  String get enterValidPhone => 'Ingresa un número de teléfono válido';

  @override
  String get confirmPassword => 'Confirmar contraseña';

  @override
  String get passwordsDoNotMatch => 'Las contraseñas no coinciden';

  @override
  String get passwordMinLength =>
      'La contraseña debe tener al menos 8 caracteres';

  @override
  String get atLeast8Chars => 'Al menos 8 caracteres';

  @override
  String get backToSignIn => 'Volver a iniciar sesión';

  @override
  String registrationFailed(String error) {
    return 'Error al registrarse: $error';
  }

  @override
  String get loginPasswordOptionalHint =>
      'Si tu perfil fue creado por admin/importacion, deja la contrasena vacia y continua.';

  @override
  String get setPasswordTitle => 'Crear contrasena';

  @override
  String setPasswordSubtitle(String email) {
    return 'Crea una contrasena para $email';
  }

  @override
  String get passwordSetupMinLength =>
      'La contrasena debe tener al menos 6 caracteres';

  @override
  String get savePasswordAndContinue => 'Guardar contrasena y continuar';

  @override
  String passwordSetupFailed(String error) {
    return 'No se pudo crear la contrasena: $error';
  }

  @override
  String get account => 'Cuenta';

  @override
  String get editInfo => 'EDITAR INFORMACIÓN';

  @override
  String get fullName => 'Nombre';

  @override
  String get retry => 'Reintentar';

  @override
  String get accountSettings => 'Configuración de la cuenta';

  @override
  String get editProfile => 'Editar perfil';

  @override
  String get deleteAccount => 'Eliminar cuenta';

  @override
  String get deleteAccountConfirmTitle => '¿Eliminar cuenta?';

  @override
  String get deleteAccountConfirmMessage =>
      '¿Seguro que quieres eliminar tu cuenta de forma permanente? Esta acción no se puede deshacer.';

  @override
  String get deleteAccountSecondTitle => 'Qué se eliminará';

  @override
  String get deleteAccountSecondMessage =>
      'Se eliminará de forma permanente de nuestros sistemas:\n\n• Tu cuenta y perfil\n• Todos los niños vinculados a tu cuenta\n• Todas las asignaciones a eventos, progreso en etapas, entradas y comidas\n• Fotos y demás datos de los niños\n• Tu acceso a chats de eventos y notificaciones en la app\n\nAlgunos registros de pago o contables pueden conservarse cuando lo exija la ley.';

  @override
  String get deleteAccountContinue => 'Continuar';

  @override
  String get deleteAccountConfirmAction => 'Eliminar para siempre';

  @override
  String get deleteAccountWorking => 'Eliminando cuenta…';

  @override
  String get save => 'Guardar';

  @override
  String get edit => 'Editar';

  @override
  String get role => 'Rol';

  @override
  String get myChildren => 'Mis hijos';

  @override
  String get addChild => 'Agregar hijo';

  @override
  String get noChildrenAddedYet => 'Aún no has agregado hijos';

  @override
  String get ageLabel => 'Edad';

  @override
  String get settings => 'Configuración';

  @override
  String get aboutTheApp => 'Acerca de la app';

  @override
  String get aboutAppDisplayName => 'YoungFashionShow';

  @override
  String get aboutPublisherLine => 'YOUNGFASHIONSHOW';

  @override
  String get aboutVersionLabel => 'VERSIÓN';

  @override
  String get aboutReleaseDateLabel => 'FECHA DE LANZAMIENTO';

  @override
  String get aboutDevelopedByPrefix => 'Desarrollado por:';

  @override
  String get aboutDeveloperBrand => 'OWLSOLUTIONS';

  @override
  String get aboutLinkCouldNotOpen => 'No se pudo abrir el enlace.';

  @override
  String get appLanguage => 'Idioma de la app';

  @override
  String get unitsOfMeasurement => 'Unidades de medida';

  @override
  String get timeDisplayFormat => 'Formato de hora';

  @override
  String get timeFormat24Hour => '24 horas';

  @override
  String get timeFormat12Hour => '12 horas (AM/PM)';

  @override
  String get metricUnits => 'Métrico (cm, kg)';

  @override
  String get imperialUnits => 'Americano (in, lb)';

  @override
  String get systemLanguage => 'Sistema';

  @override
  String get languageRussian => 'Ruso';

  @override
  String get languageEnglish => 'Inglés';

  @override
  String get languageUkrainian => 'Ucraniano';

  @override
  String get languageSpanishUS => 'Español (EE. UU.)';

  @override
  String get addChildTitle => 'Agregar hijo';

  @override
  String get firstName => 'Nombre';

  @override
  String get gender => 'Género';

  @override
  String get genderBoy => 'Niño';

  @override
  String get genderGirl => 'Niña';

  @override
  String get lastName => 'Apellido';

  @override
  String get birthdate => 'Fecha de nacimiento';

  @override
  String get chooseDate => 'Elige la fecha';

  @override
  String get create => 'Crear';

  @override
  String get enterFirstName => 'Ingresa el nombre';

  @override
  String get mainPhoto => 'Foto principal';

  @override
  String get changePhoto => 'Cambiar';

  @override
  String get deletePhoto => 'Eliminar';

  @override
  String get addPhoto => 'Agregar foto';

  @override
  String get photoSaved => 'Foto guardada';

  @override
  String get photoDeleted => 'Foto eliminada';

  @override
  String get photoAdded => 'Foto agregada';

  @override
  String get extraPhotos => 'Fotos adicionales';

  @override
  String get cancel => 'Cancelar';

  @override
  String get clear => 'Limpiar';

  @override
  String get height => 'Estatura';

  @override
  String get weight => 'Peso';

  @override
  String get shoulders => 'Hombros';

  @override
  String get chest => 'Pecho';

  @override
  String get waist => 'Cintura';

  @override
  String get hips => 'Caderas';

  @override
  String get measurementLengthUnitCm => 'cm';

  @override
  String get measurementLengthUnitIn => 'in';

  @override
  String get currentParticipation => 'Participación actual';

  @override
  String childSubscribedBrands(String brands) {
    return 'Marcas: $brands';
  }

  @override
  String get unknownError => 'Error desconocido';

  @override
  String model(String name) {
    return 'Modelo: $name';
  }

  @override
  String get active => 'ACTIVO';

  @override
  String get familyLabel => 'FAMILY';

  @override
  String get familyJoinButton => 'UNIRSE A FAMILIA';

  @override
  String get familyJoinDialogHint => 'Ingresa el codigo familiar de 6 digitos.';

  @override
  String get familyJoinAction => 'Unirse';

  @override
  String get familyJoinInvalidCode => 'Ingresa un codigo valido de 6 digitos.';

  @override
  String get familyJoinSuccess => 'Suscripcion familiar conectada.';

  @override
  String get contractWarningTitle => 'Aviso';

  @override
  String get contractWarningFallbackText =>
      'Antes de comprar boletos, revisa y firma el contrato.';

  @override
  String get contractViewButton => 'Ver';

  @override
  String get contractPreviewTitle => 'Texto del contrato';

  @override
  String get contractSignButton => 'Firmar';

  @override
  String get contractSignatureTitle => 'Anade la firma';

  @override
  String get contractSignedSuccess => 'Contrato firmado correctamente.';

  @override
  String get journeyProgress => 'PROGRESO';

  @override
  String get journeyPreparationPhase => 'FASE DE PREPARACIÓN';

  @override
  String get journeyMainEventTitle => 'EVENTO PRINCIPAL';

  @override
  String get journeyMainEventSubtitle => 'EXCLUSIVO PASARELA';

  @override
  String stepOf(int completed, int total) {
    return 'Paso $completed de $total';
  }

  @override
  String next(String text) {
    return 'Siguiente: $text';
  }

  @override
  String get viewProgress => 'VER PROGRESO';

  @override
  String get eventSettings => 'AJUSTES DEL EVENTO';

  @override
  String get homeEventCardMyEvent => 'MI EVENTO';

  @override
  String get homeEventCardRunwayJourney => 'RECORRIDO DE PASARELA';

  @override
  String get eventSettingsPlaceholder =>
      'Pronto verás aquí los ajustes del evento.';

  @override
  String get eventSettingsConfigurationPortal => 'PORTAL DE CONFIGURACIÓN';

  @override
  String get eventSettingsMainHeadline => 'Ajustes del evento';

  @override
  String get eventSettingsFamilyButton => 'Familia';

  @override
  String get familyManageTitle => 'Familia';

  @override
  String get familyManageEnabled => 'Activar conexiones familiares';

  @override
  String get familyManageCodeLabel => 'Codigo familiar';

  @override
  String get familyManageRegenerateCode => 'Cambiar codigo';

  @override
  String get familyManageConnectionsTitle => 'Conexiones familiares activas';

  @override
  String get familyManageNoConnections =>
      'Aun no hay conexiones familiares activas.';

  @override
  String get familyManageUnknownUser => 'Usuario desconocido';

  @override
  String get eventSettingsLeaveFamilyButton => 'Desconectarse de la familia';

  @override
  String get eventSettingsLeaveFamilyConfirmTitle =>
      '?Desconectar acceso familiar?';

  @override
  String get eventSettingsLeaveFamilyConfirmText =>
      'Perderas el acceso familiar al evento hasta volver a unirte con codigo.';

  @override
  String get eventSettingsLeaveFamilySuccess =>
      'El acceso familiar se ha desconectado.';

  @override
  String get eventSettingsMealTitle => 'Selección de comidas';

  @override
  String get eventSettingsMealSubtitle =>
      'Elige un plato para el evento actual';

  @override
  String get eventSettingsMealCta => 'GESTIONAR MENÚ';

  @override
  String eventSettingsMealOrderedPcs(int count) {
    return 'Pedido: $count ud.';
  }

  @override
  String get eventSettingsMealPurchasesListHeading => 'Pedidos realizados';

  @override
  String eventSettingsMealPurchaseChildLine(String name) {
    return 'Nino/a: $name';
  }

  @override
  String get mealPurchaseIssued => 'Entregado';

  @override
  String get mealPurchaseNotIssued => 'Aun no entregado';

  @override
  String get eventSettingsRehearsalTitle => 'Reserva de ensayo';

  @override
  String get eventSettingsRehearsalSubtitle =>
      'Reserva tu plaza para el ensayo';

  @override
  String get eventSettingsRehearsalCta => 'RESERVAR';

  @override
  String get eventSettingsBrandRehearsalsHeading => 'Tus ensayos de marca';

  @override
  String get rehearsalModalTitle => 'Reserva de ensayo';

  @override
  String get rehearsalSelectDate => 'Elige fecha';

  @override
  String get rehearsalAvailableSlots => 'Horarios disponibles';

  @override
  String get rehearsalFreeLabel => 'Libres:';

  @override
  String get rehearsalNoSlotsConfigured =>
      'Aún no hay franjas de ensayo para este evento.';

  @override
  String get rehearsalLoadError =>
      'No se pudieron cargar las franjas. Inténtalo de nuevo.';

  @override
  String get rehearsalBrandNotAssigned =>
      'No hay marca asignada para este niño. La reserva de ensayos no está disponible.';

  @override
  String get rehearsalFull => 'Completo';

  @override
  String get rehearsalConfirmBooking => 'Confirmar reserva';

  @override
  String get rehearsalBookingFooterNote =>
      'Si es posible, cambia con 24 h de antelación.';

  @override
  String get rehearsalBookedTitle => 'Ensayo reservado';

  @override
  String get rehearsalChangeBooking => 'Cambiar reserva';

  @override
  String get rehearsalProgramLabel => 'Descripción';

  @override
  String get rehearsalArriveEarly => 'Llega 15 minutos antes.';

  @override
  String get rehearsalBookingSaved => 'Reserva guardada';

  @override
  String get rehearsalBookingError => 'No se pudo completar la reserva.';

  @override
  String get rehearsalSelectChild => 'Niño/a';

  @override
  String get rehearsalUpdateBooking => 'Agregar y actualizar reserva';

  @override
  String get rehearsalCancelChange => 'Cancelar';

  @override
  String get rehearsalChangeBookingLockedHint =>
      'El organizador cerró los cambios de reserva. Contacta soporte si necesitas ayuda.';

  @override
  String get rehearsalMilestoneTitle => 'Ensayo general';

  @override
  String rehearsalBrandMilestoneTitle(String brandName) {
    return 'Ensayo de marca: $brandName';
  }

  @override
  String get rehearsalBrandMilestoneShort => 'Ensayo de marca';

  @override
  String get rehearsalNextBookHint =>
      'Reserva tu ensayo en Ajustes del evento.';

  @override
  String get eventSettingsPackingTitle => 'Lista «No olvides»';

  @override
  String get eventSettingsPackingSubtitle => '';

  @override
  String get eventSettingsPackingCta => 'VER LISTA';

  @override
  String get eventPackingLoadFailed =>
      'No se pudo cargar la información. Inténtalo de nuevo.';

  @override
  String get eventPackingEmpty =>
      'Aún no se añadió información para este evento.';

  @override
  String get eventDescriptionTitle => 'Información del evento';

  @override
  String get eventProgressShowGallery => 'Galería';

  @override
  String get eventProgressCheckin => 'Check-in';

  @override
  String get eventProgressCheckinPrompt => 'Escanea para iniciar el evento';

  @override
  String get eventProgressCheckinUnavailable =>
      'El código de check-in aún no está disponible.';

  @override
  String get eventDescriptionLoadFailed =>
      'No se pudo cargar la descripción. Inténtalo de nuevo.';

  @override
  String get eventDescriptionEmpty =>
      'Aún no hay descripción de texto para este evento.';

  @override
  String get eventSettingsBrandTitle => 'Zapatos y calcetines';

  @override
  String get eventSettingsBrandSubtitle =>
      'Consulta las recomendaciones de la marca para participar en el evento';

  @override
  String get eventSettingsBrandCta => 'VER GUÍAS';

  @override
  String get brandRequirementsLoadFailed =>
      'No se pudieron cargar los requisitos de marca. Inténtalo de nuevo.';

  @override
  String get brandRequirementsEmpty =>
      'Aún no se añadieron requisitos de marca para este evento.';

  @override
  String get brandRequirementsEmptyItem =>
      'Aún no se añadió texto de requisitos para esta marca.';

  @override
  String get brandRequirementsPickBrandTitle => 'Elige una marca';

  @override
  String brandRequirementsBrandNumber(int brandId) {
    return 'Marca $brandId';
  }

  @override
  String get eventSettingsParkingTitle => 'Valet parking';

  @override
  String get eventSettingsParkingSubtitle =>
      'Abre tu pase de valet parking y el estado de llegada';

  @override
  String get eventSettingsParkingCta => 'ABRIR VALET PARKING';

  @override
  String get parkingChooseModeTitle => 'Modo valet parking';

  @override
  String get parkingChooseModeHint =>
      'Elige el estado de pantalla para probar el visual.';

  @override
  String get parkingModeInactive => 'INACTIVO';

  @override
  String get parkingModeActive => 'ACTIVO';

  @override
  String get parkingInactiveHeadline => 'VALET PARKING NO ACTIVO';

  @override
  String get parkingInactiveBody =>
      'EL VALET PARKING APARECERA AQUI DESPUES DE COMPRAR EL TICKET.';

  @override
  String get parkingInactiveBuyCta => 'COMPRAR';

  @override
  String get parkingInactiveVipBody =>
      'PARA VIP VALET PARKING — RESERVA UNA PLAZA PARA TU VEHICULO.';

  @override
  String get parkingInactiveVipBookCta => 'RESERVAR VALET PARKING';

  @override
  String get parkingPayForParkingCta => 'PAGAR VALET PARKING';

  @override
  String get parkingVipQuotaNextPaymentBody =>
      'YA HAS USADO LOS VALETS DE CORTESIA PARA ESTE EVENTO. AUN PUEDES ANADIR UNA PLAZA AL PRECIO REGULAR.';

  @override
  String parkingFreeTicketsQuotaLine(int used, int quota, int remaining) {
    return 'Valet de cortesia: $used de $quota usados (quedan $remaining)';
  }

  @override
  String get parkingActiveTicketLabel => 'TICKET';

  @override
  String get parkingTicketMock1 => 'TICKET A1 · MODELO';

  @override
  String get parkingTicketMock2 => 'TICKET B7 · INVITADO';

  @override
  String get parkingActiveValetLabel => 'VALET SERVICE';

  @override
  String get parkingActiveStatusLine => 'VALET PARKING ACTIVO';

  @override
  String get parkingActiveShowEntryPointCta => 'MOSTRAR PUNTO DE ENTRADA';

  @override
  String get parkingActiveCarLabel => 'AUTOMOVIL';

  @override
  String get parkingActiveRegistrationNumberLabel => 'NUMERO DE PLACA';

  @override
  String get parkingCreateTicketTitle => 'Crear ticket';

  @override
  String get parkingCreateEventLabel => 'Evento';

  @override
  String get parkingCreateAccountNameLabel => 'Nombre';

  @override
  String get parkingCreateCarModelLabel => 'MARCA Y MODELO';

  @override
  String get parkingCreateCarModelHint => 'Por ejemplo: Ford Mustang';

  @override
  String get parkingCreatePlateNumberLabel => 'NUMERO DE PLACA';

  @override
  String get parkingCreatePlateNumberHint => 'Por ejemplo: CA 7JXK921';

  @override
  String get parkingCreateRepeatPlateNumberLabel => 'REPITE EL NUMERO DE PLACA';

  @override
  String get parkingCreateRepeatPlateNumberHint =>
      'Vuelve a escribir el numero de placa';

  @override
  String get parkingCreatePlateNumberMismatch =>
      'Los numeros de placa no coinciden';

  @override
  String get parkingCreateBuyCta => 'COMPRAR';

  @override
  String get parkingCreateBookCta => 'RESERVAR VALET PARKING';

  @override
  String get parkingCheckoutInBrowser => 'Completa el pago en tu navegador.';

  @override
  String get parkingPurchasedWithoutPayment => 'Ticket comprado con exito.';

  @override
  String get parkingVipBooked => 'Valet parking VIP reservado con exito.';

  @override
  String get parkingCheckoutError =>
      'No se pudo iniciar el pago de valet parking. Intentalo de nuevo.';

  @override
  String get clientTicketServiceUnavailableTitle => 'Servicio no disponible';

  @override
  String get clientTicketServiceUnavailableBody =>
      'Este servicio de entradas no esta activo ahora.';

  @override
  String get parkingActivePassLabel => 'CODIGO';

  @override
  String get eventSettingsChatTitle => 'Chat grupal';

  @override
  String get eventSettingsChatSubtitle =>
      'Chat grupal con participantes del grupo y managers';

  @override
  String get eventSettingsChatCta => 'ABRIR CHAT';

  @override
  String get chatRoomsLoadFailed =>
      'No se pudieron cargar las salas de chat. Inténtalo de nuevo.';

  @override
  String get chatNoRooms =>
      'Aún no hay salas de chat para tus marcas en este evento.';

  @override
  String get chatNoMessagesYet => 'Sin mensajes todavía';

  @override
  String get chatLoadFailed =>
      'No se pudieron cargar los mensajes. Inténtalo de nuevo.';

  @override
  String get chatSendFailed =>
      'No se pudo enviar el mensaje. Inténtalo de nuevo.';

  @override
  String get chatMessagePlaceholder => 'Mensaje al grupo...';

  @override
  String get chatReply => 'Responder';

  @override
  String get chatReplyCancel => 'Cancelar';

  @override
  String chatReplyingTo(String name) {
    return 'Respondiendo a $name';
  }

  @override
  String get chatReplyPreviewPhoto => 'Foto';

  @override
  String get chatEdit => 'Editar';

  @override
  String get chatDelete => 'Eliminar';

  @override
  String get chatDeleteTitle => '?Eliminar mensaje?';

  @override
  String get chatDeleteMessageConfirm => 'Esta accion no se puede deshacer.';

  @override
  String get chatDeleteFailed =>
      'No se pudo eliminar el mensaje. Intentalo de nuevo.';

  @override
  String get chatEditFailed =>
      'No se pudo editar el mensaje. Intentalo de nuevo.';

  @override
  String get chatEditingLabel => 'Editando mensaje';

  @override
  String get chatCancelEdit => 'Cancelar edicion';

  @override
  String eventSettingsChatMoreParticipants(int count) {
    return '+$count';
  }

  @override
  String get mealChoiceTitle => 'Elegir comida';

  @override
  String get mealSelectChildLabel => 'Niño/a';

  @override
  String get mealSelectDishLabel => 'Plato';

  @override
  String get mealSave => 'PEDIR';

  @override
  String get mealNoMealsConfigured => 'Aún no hay platos para este evento.';

  @override
  String get mealSaved => 'Guardado';

  @override
  String get mealSaveError => 'No se pudo guardar. Inténtalo de nuevo.';

  @override
  String get mealOrdersClosed => 'El plazo para elegir el menú está cerrado';

  @override
  String get mealPaid => 'Pagado';

  @override
  String get mealPaidDetail => 'El menú de este evento está pagado.';

  @override
  String get mealPayInBrowser =>
      'Completa el pago en el navegador y vuelve a la app.';

  @override
  String get mealCheckoutError =>
      'No se pudo iniciar el pago. Inténtalo de nuevo.';

  @override
  String get mealAwaitingPayment => 'Pedido registrado — pendiente de pago';

  @override
  String get mealAwaitingPaymentDetail =>
      'Tu plato esta guardado. Termina el pago en el navegador; el estado se actualizara cuando Stripe lo confirme.';

  @override
  String get mealPaymentContinue => 'Continuar pago';

  @override
  String get mealPaymentCancel => 'Cancelar pago';

  @override
  String get mealPaymentStartAgain => 'Iniciar pago de nuevo';

  @override
  String get mealPaymentCanceled =>
      'Pago cancelado. Puedes empezar de nuevo cuando quieras.';

  @override
  String get mealPaymentStatusLoadError =>
      'No se pudo cargar el estado del pago. Intentalo de nuevo.';

  @override
  String get noActiveEvents => 'No hay eventos activos';

  @override
  String get becomeModelTitle => 'Comienza la carrera de modelo de tu hijo hoy';

  @override
  String get becomeAModel => 'SER MODELO';

  @override
  String get latestHighlights => 'Últimos destacados';

  @override
  String get viewAll => 'VER TODO';

  @override
  String get quickActions => 'Acciones rápidas';

  @override
  String get fillOutApplication => 'Completar\nsolicitud';

  @override
  String get upcomingShows => 'Próximos\nshows';

  @override
  String get manageKids => 'Mis\nhijos';

  @override
  String get navHome => 'Inicio';

  @override
  String get navEvents => 'Eventos';

  @override
  String get eventsYoutubeLiveButton => 'YouTube en directo';

  @override
  String get eventsYoutubeLiveInvalidUrl =>
      'No se pudo abrir este enlace de YouTube.';

  @override
  String get eventsYoutubeLiveOpenExternally => 'Abrir en YouTube';

  @override
  String get navProfile => 'Perfil';

  @override
  String get navInfo => 'Información';

  @override
  String get continueButton => 'Continuar';

  @override
  String get loading => 'Cargando...';

  @override
  String get signOut => 'Cerrar sesión';

  @override
  String get tokenValidNext => 'Sesión válida. Siguiente: Inicio.';

  @override
  String get homePageTitle => 'Inicio';

  @override
  String youAreSignedIn(String name) {
    return 'Has iniciado sesión$name.';
  }

  @override
  String yourRole(String role) {
    return 'Tu rol: $role';
  }

  @override
  String get phoneHint => '+1234567890';

  @override
  String get enterValidEmailShort => 'Ingresa un correo válido';

  @override
  String get phoneMustStartWithPlusShort => 'El teléfono debe comenzar con +';

  @override
  String get comingSoon => 'Próximamente';

  @override
  String get hello => 'Hola';

  @override
  String helloName(String name) {
    return 'Hola, $name';
  }

  @override
  String get noRolesAssigned =>
      'Aún no tienes roles asignados. Contacta a la administración.';

  @override
  String signedInAs(String name) {
    return 'Sesión iniciada como $name';
  }

  @override
  String get staff => 'Personal';

  @override
  String get birthdateDialogTitle => 'Fecha de nacimiento';

  @override
  String get nextShowsTitle => 'Próximos shows';

  @override
  String get nextShowsSeason => 'Temporada 2026';

  @override
  String get details => 'Detalles';

  @override
  String get contact => 'Contacto';

  @override
  String get registrationOpen => 'Registro abierto';

  @override
  String get myTicketsButton => 'MIS ENTRADAS';

  @override
  String get myTicketsTitle => 'Mis entradas';

  @override
  String get selectEventForTickets => 'Selecciona el evento';

  @override
  String get ticketsMomName => 'Nombre del padre/madre';

  @override
  String get ticketsEventDate => 'Fecha';

  @override
  String get ticketsOpenPdf => 'ABRIR';

  @override
  String get ticketsPdfUnavailable => 'PDF aún no disponible';

  @override
  String get ticketsBuy => 'COMPRAR ENTRADA';

  @override
  String get ticketsBuyNoLink =>
      'No hay enlace de compra. Añade la URL de la tienda de entradas para este evento en el admin o en la web en Info.';

  @override
  String get ticketsBuyCouldNotOpen => 'No se pudo abrir el enlace.';

  @override
  String get ticketsBuySubtitle => 'Asientos VIP y estándar disponibles';

  @override
  String get ticketsBuyEmailHint =>
      'Tus entradas llegarán al correo electrónico indicado al comprar el billete.';

  @override
  String get extraTicketButton => 'OPEN BAR';

  @override
  String get extraTicketSelectEventFirst => 'Selecciona primero un evento.';

  @override
  String get extraTicketNoActiveHeadline => 'NO HAY BEVERAGE PACKAGE ACTIVOS';

  @override
  String get extraTicketBuyCta => 'COMPRAR';

  @override
  String get extraTicketAccessOpen => 'ACCESO A BEVERAGE PACKAGE ABIERTO';

  @override
  String get extraTicketCheckoutInBrowser =>
      'Completa el pago en tu navegador.';

  @override
  String get extraTicketCheckoutError =>
      'No se pudo iniciar el pago de BEVERAGE PACKAGE. Intentalo de nuevo.';

  @override
  String get backstageTicketButton => 'BACKSTAGE PASS';

  @override
  String get backstageTicketSelectEventFirst => 'Selecciona primero un evento.';

  @override
  String get backstageTicketNoActiveHeadline => 'NO HAY BACKSTAGE PASS ACTIVOS';

  @override
  String get backstageTicketBuyCta => 'COMPRAR';

  @override
  String get backstageTicketAccessOpen => 'ACCESO A BACKSTAGE PASS ABIERTO';

  @override
  String get backstageTicketCheckoutInBrowser =>
      'Completa el pago en tu navegador.';

  @override
  String get backstageTicketCheckoutError =>
      'No se pudo iniciar el pago de BACKSTAGE PASS. Intentalo de nuevo.';

  @override
  String get ticketsNoEvents => 'Aún no hay eventos con entradas';

  @override
  String get ticketsNoneForEvent => 'No hay entradas para este evento';

  @override
  String get ticketsLoadError => 'No se pudieron cargar las entradas';

  @override
  String get ticketsEventsLoadError => 'No se pudieron cargar los eventos';

  @override
  String get faqBrandCatalogTitle => 'Marcas de ropa';

  @override
  String get pdfViewerTitle => 'Entrada';

  @override
  String get contactFormLinkMissing =>
      'No hay enlace al formulario. Añade la URL en Ajustes generales de la app en el panel.';

  @override
  String get infoHubTitle => 'Centro de información';

  @override
  String get infoMenuAboutYfs => 'Acerca de YFS';

  @override
  String get infoMenuGeneralFaq => 'FAQ general';

  @override
  String get infoMenuContactManager => 'Contactar al gestor';

  @override
  String get infoFooterBrand => 'YFS';

  @override
  String get infoFooterCopyright =>
      '© 2024 Young Fashion Series. Todos los derechos reservados.';

  @override
  String parentProgressLabel(int completed, int total) {
    return 'Progreso del padre/madre: $completed/$total';
  }

  @override
  String get appUpdateRequiredMessage =>
      'Actualiza la aplicación para continuar.';

  @override
  String get appUpdateButton => 'Actualizar aplicación';

  @override
  String get showAll => 'Ver todo';

  @override
  String get staffNoneSelected => '-- Ninguno --';

  @override
  String get staffRoleInactive => 'INACTIVA';

  @override
  String get staffWorkerStatusRefreshFailed =>
      'No se pudo actualizar el estado del rol. Comprueba la conexión.';

  @override
  String get staffScanRoleInactive =>
      'Este rol fue desactivado en el panel. El escaneo no está disponible.';

  @override
  String staffScanFailed(String error) {
    return 'Error al escanear: $error';
  }

  @override
  String get staffScanSelectEventStageFirst =>
      'Selecciona el evento y la etapa activos en Ajustes del personal antes de escanear.';

  @override
  String get staffScanProcessed => 'Escaneo procesado';

  @override
  String get chatCouldNotPickPhoto => 'No se pudo elegir la foto';

  @override
  String get staffChildProfileTitle => 'Perfil del niño';

  @override
  String get staffEventTimelineButton => 'TIMELINE';

  @override
  String get staffLookButton => 'LOOK';

  @override
  String get staffLookTitle => 'Look';

  @override
  String get staffLookSelectBrand => 'Seleccionar marca';

  @override
  String get staffLookNotFound => 'Look no encontrado';

  @override
  String get staffLookLoadFailed => 'No se pudo cargar el look';

  @override
  String get staffLookNoBrand => 'El niño no tiene marca asignada';

  @override
  String get staffEventTimelineTitle => 'Timeline del evento';

  @override
  String get staffParentTimelineButton1 => 'TIMELINE DEL PADRE 1';

  @override
  String get staffParentTimelineButton2 => 'TIMELINE DEL PADRE 2';

  @override
  String get staffParentTimelineTitle1 => 'Timeline del padre 1';

  @override
  String get staffParentTimelineTitle2 => 'Timeline del padre 2';

  @override
  String get staffCurrentStage => 'ETAPA ACTUAL';

  @override
  String staffProgressPercentComplete(int percent) {
    return '$percent% completado';
  }

  @override
  String get staffChildDetailEmpty =>
      'No hay datos del niño en la base de datos';

  @override
  String get staffLoadFailed => 'Error al cargar';

  @override
  String get staffGuardianLiaison => 'ENLACE CON TUTORES';

  @override
  String get staffAssignedBrand => 'MARCA ASIGNADA';

  @override
  String get staffAssignedPackage => 'PAQUETE';

  @override
  String get staffSupervisor => 'SUPERVISOR';

  @override
  String get staffSectionCoreDetails => 'Datos principales';

  @override
  String get staffSectionParentContact => 'Contacto del padre/madre';

  @override
  String staffPhaseWithName(String stageName) {
    return 'Fase: $stageName';
  }

  @override
  String get staffNoCurrentStage => 'Sin etapa actual';

  @override
  String staffAgeYearsOld(int age) {
    return '$age años';
  }

  @override
  String get staffNotesLabel => 'Notas';

  @override
  String get staffParentRoleDefault => 'Padre/madre';

  @override
  String get contactManagerIntro =>
      'Puedes dejar un mensaje sobre cualquier consulta; nos pondremos en contacto contigo lo antes posible.';

  @override
  String get contactManagerMessageLabel => 'Tu mensaje';

  @override
  String get contactManagerMessageRequired => 'Escribe tu mensaje';

  @override
  String get contactManagerSend => 'Enviar';

  @override
  String get contactManagerSent =>
      'Tu mensaje se ha enviado. Nos pondremos en contacto contigo pronto.';

  @override
  String get contactManagerSendFailed =>
      'No se pudo enviar. Inténtalo más tarde.';

  @override
  String get contactManagerServiceUnavailable =>
      'El contacto no está disponible temporalmente. Inténtalo más tarde.';

  @override
  String get close => 'Cerrar';

  @override
  String get staffPortalTitle => 'Portal del personal';

  @override
  String get staffActiveEvent => 'Evento activo';

  @override
  String get staffActiveStage => 'Etapa activa';

  @override
  String get staffSelectEvent => 'Selecciona evento';

  @override
  String get staffSelectEventInSettings =>
      'Selecciona un evento en Ajustes del personal';

  @override
  String get staffSelectStage => 'Selecciona etapa';

  @override
  String staffPreparatoryStageLabel(String stageName) {
    return 'Prep: $stageName';
  }

  @override
  String get staffScanButton => 'ESCANEAR';

  @override
  String get staffQrCheckButton => 'QR CHECK';

  @override
  String get staffParkingButton => 'VALET PARKING';

  @override
  String get staffExtraZoneButton => 'BEVERAGE PACKAGE';

  @override
  String get staffBackstageButton => 'BACKSTAGE PASS';

  @override
  String get staffRehearsalCheckinButton => 'CHECK-IN ENSAYO';

  @override
  String get staffTapToScanModelLanyard =>
      'TOCA PARA ESCANEAR EL GAFETE DE LA MODELO';

  @override
  String get staffTapToScanParkingQr =>
      'TOCA PARA ESCANEAR QR DE VALET PARKING';

  @override
  String get staffTapToScanExtraZoneQr =>
      'TOCA PARA ESCANEAR QR DE BEVERAGE PACKAGE';

  @override
  String get staffTapToScanBackstageQr =>
      'TOCA PARA ESCANEAR QR DE BACKSTAGE PASS';

  @override
  String get staffTapToScanRehearsalCheckinQr =>
      'TOCA PARA ESCANEAR QR DE CHECK-IN DE ENSAYO';

  @override
  String get staffMealHandoutButton => 'COMIDAS';

  @override
  String get staffTapToScanMealBadge =>
      'TOCA PARA ESCANEAR BRAZALETE (NINO O PADRE)';

  @override
  String get staffMealIssueTitle => 'Entrega de almuerzos';

  @override
  String get staffMealIssueNoMeals => 'No hay almuerzos pedidos con este pase.';

  @override
  String get staffMealIssueHandOut => 'Entregar';

  @override
  String get staffMealIssueSuccess => 'Marcado como entregado.';

  @override
  String staffMealIssueFailure(String error) {
    return 'Error: $error';
  }

  @override
  String get staffMealIssueAlreadyIssued => 'ya entregado';

  @override
  String get staffTapToScanQrCheck =>
      'TOCA PARA ESCANEAR BRAZALETE — ETAPA Y FICHA';

  @override
  String get staffCurrentTask => 'Tarea actual';

  @override
  String get staffUtilitiesAndTools => 'UTILIDADES Y HERRAMIENTAS';

  @override
  String get staffScanForInfoTitle => 'Escanear para info';

  @override
  String get staffScanForInfoSubtitle => 'Escaner general de activos e ID';

  @override
  String get staffToiletRequest => 'Solicitud de bano';

  @override
  String get staffRestroomLog => 'REGISTRO DE BANO';

  @override
  String get staffSettingsCardTitle => 'Ajustes del personal';

  @override
  String get staffPreferences => 'PREFERENCIAS';

  @override
  String get staffSupervisorRoleTitle => 'Rol de supervisor';

  @override
  String get staffSupervisorRoleDescription =>
      'Gestiona el flujo del evento, supervisa a los fotografos y asegura que todos los ninos sean registrados. Sigue el progreso en tiempo real.';

  @override
  String get staffCurrentStageLabel => 'Etapa actual';

  @override
  String get staffNoMainStagesAvailable =>
      'No hay etapas principales disponibles para este evento.';

  @override
  String get staffChildRegistry => 'Registro de ninos';

  @override
  String staffChildrenListed(int count) {
    return '$count ninos en lista';
  }

  @override
  String get staffSelectActiveEventForRegistry =>
      'Selecciona un evento activo en Ajustes para ver el registro de ninos.';

  @override
  String get staffNoChildrenAssigned =>
      'No hay ninos asignados para este evento.';

  @override
  String get staffRehearsalAdminSlotsTitle => 'Slots de ensayo';

  @override
  String get staffRehearsalCheckinActiveSlot => 'Slot de ensayo activo';

  @override
  String get staffRehearsalAdminSelectSlot => 'Selecciona un slot de ensayo';

  @override
  String get staffRehearsalCheckinSelectSlotFirst =>
      'Primero selecciona un slot de ensayo';

  @override
  String get staffRehearsalCheckinParticipantsTable => 'Tabla de participantes';

  @override
  String get staffRehearsalCheckinParticipantsTitle => 'Participantes';

  @override
  String get staffBrandRehearsalActiveStage => 'Ensayo de marca activo';

  @override
  String get staffBrandRehearsalSelectWorkplaceTitle =>
      'Selecciona el lugar de trabajo';

  @override
  String get staffBrandRehearsalSelectWorkplaceHint =>
      'Selecciona el ensayo de marca en el que trabajas.';

  @override
  String get staffBrandRehearsalActivate => 'Activar';

  @override
  String get staffBrandRehearsalSelectStageFirst =>
      'Primero selecciona el ensayo de marca';

  @override
  String get staffBrandRehearsalCheckinButton => 'CHECK-IN ENSAYO\nDE MARCA';

  @override
  String get staffTapToScanBrandRehearsal => 'ESCANEA CHECK-IN O BADGE';

  @override
  String get staffRehearsalAdminBookedChildrenTitle => 'Ninos inscritos';

  @override
  String get staffRehearsalAdminNoSlots =>
      'No hay slots de ensayo creados para este evento.';

  @override
  String get staffRehearsalAdminNoChildrenForSlot =>
      'No hay ninos inscritos en este slot.';

  @override
  String get staffGiftControlButton => 'CONTROL';

  @override
  String get staffGiftIssueSelectWorkplaceTitle => 'Selecciona la etapa';

  @override
  String get staffGiftIssueSelectWorkplaceHint =>
      'Elige la etapa de regalos en la que trabajas.';

  @override
  String get staffGiftIssueSelectStageFirst =>
      'Primero selecciona la etapa de regalos';

  @override
  String get staffGiftControlTitle => 'Control de entrega de regalos';

  @override
  String get staffGiftControlSearchHint => 'Buscar por nombre';

  @override
  String get staffGiftControlSelectSlot => 'Filtrar por slot de ensayo';

  @override
  String get staffGiftControlAllSlots => 'Todos los slots de ensayo';

  @override
  String get staffGiftControlSelectStage => 'Selecciona la etapa del reporte';

  @override
  String get staffGiftControlFilterAll => 'Todos';

  @override
  String get staffGiftControlFilterPassed => 'Completado';

  @override
  String get staffGiftControlFilterNotPassed => 'No completado';

  @override
  String get staffGiftControlNoChildren =>
      'No hay ninos para los filtros seleccionados.';

  @override
  String get staffTableProfile => 'PERFIL';

  @override
  String get staffTableName => 'NOMBRE';

  @override
  String get staffTableStatus => 'ESTADO';

  @override
  String get staffTableAction => 'ACCION';

  @override
  String get staffYes => 'Si';

  @override
  String get staffNo => 'No';

  @override
  String get staffRoleHostessTitle => 'Rol: hostess';

  @override
  String get staffRoleHostessPlaceholder =>
      'La pantalla del rol hostess se anadira mas tarde.';

  @override
  String get staffRoleInterviewTitle => 'Rol: entrevista';

  @override
  String get staffRoleInterviewPlaceholder =>
      'La pantalla del rol entrevista se anadira mas tarde.';

  @override
  String get staffRoleLunchesTitle => 'Rol: almuerzos';

  @override
  String get staffRoleLunchesPlaceholder =>
      'La pantalla del rol almuerzos se anadira mas tarde.';

  @override
  String get staffRoleSuperadminTitle => 'Rol: superadmin';

  @override
  String get staffRoleSuperadminPlaceholder =>
      'La pantalla del rol superadmin se anadira mas tarde.';

  @override
  String get staffRoleRehearsalAdminTitle => 'Rol: admin de ensayos';

  @override
  String get staffRoleRehearsalAdminPlaceholder =>
      'La pantalla del rol admin de ensayos se anadira mas tarde.';

  @override
  String get staffNavHome => 'Inicio';

  @override
  String get staffNavEvent => 'Evento';

  @override
  String get staffNavMore => 'Mas';

  @override
  String get staffAccessBadge => 'ACCESO DE PERSONAL';

  @override
  String get staffVenueAndContact => 'Sede y contacto';

  @override
  String get staffMainOffice => 'Oficina principal';

  @override
  String get staffSecurity => 'Seguridad';

  @override
  String get staffScanHeaderParking => 'Escaneo de valet parking';

  @override
  String get staffScanHeaderExtraZone => 'Entrada a BEVERAGE PACKAGE';

  @override
  String get staffScanHeaderBackstage => 'Entrada a BACKSTAGE PASS';

  @override
  String get staffScanHeaderRehearsalCheckin => 'Check-in de ensayo';

  @override
  String get staffScanHeaderInfo => 'Escanear para info';

  @override
  String get staffScanHeaderQr => 'Escanear codigo QR';

  @override
  String get staffScanHintParking =>
      'Escanea el QR de valet parking para mostrar datos del ticket';

  @override
  String get staffScanHintExtraZone =>
      'Escanea el QR de BEVERAGE PACKAGE para permitir entrada';

  @override
  String get staffScanHintBackstage =>
      'Escanea el QR de BACKSTAGE PASS para permitir entrada';

  @override
  String get staffScanHintRehearsalCheckin =>
      'Escanea QR de check-in del nino para cerrar el paso de ensayo';

  @override
  String get staffScanHintInfo =>
      'Escanea gafete de nino o padre para ver el perfil';

  @override
  String get staffScanHintQr => 'Alinea el codigo QR dentro del marco';

  @override
  String get staffScanHeaderQrCheck => 'Verificacion QR';

  @override
  String get staffScanHintQrCheck =>
      'Escanea el brazalete del nino para marcar la etapa y abrir la ficha';

  @override
  String get staffQrCheckSuccessTitle => 'Etapa marcada';

  @override
  String get staffQrCheckSuccessContinue => 'Continuar';

  @override
  String get staffScanErrorTitle => 'Error de escaneo';

  @override
  String get staffScanErrorUnknown => 'Error de escaneo desconocido.';

  @override
  String get staffParkingTicketTitle => 'Ticket de valet parking';

  @override
  String get staffExtraZonePassTitle => 'Pase de BEVERAGE PACKAGE';

  @override
  String get staffExtraZoneScanResultTitle => 'Resultado del escaneo';

  @override
  String get staffExtraZoneResultNotFound =>
      'CODIGO NO ENCONTRADO EN LA BASE DE DATOS';

  @override
  String get staffExtraZoneResultAccessGranted =>
      'CODIGO ACEPTADO, ACCESO PERMITIDO';

  @override
  String get staffExtraZoneResultAccessClosed =>
      'CODIGO ACEPTADO, PERO ACCESO CERRADO';

  @override
  String get staffBackstageScanResultTitle => 'Resultado del escaneo';

  @override
  String get staffBackstageResultNotFound =>
      'CODIGO NO ENCONTRADO EN LA BASE DE DATOS';

  @override
  String get staffBackstageResultAccessGranted =>
      'CODIGO ACEPTADO, ACCESO PERMITIDO';

  @override
  String get staffBackstageResultAccessClosed =>
      'CODIGO ACEPTADO, PERO ACCESO CERRADO';

  @override
  String get staffRehearsalCheckinScanResultTitle => 'Resultado del escaneo';

  @override
  String get staffRehearsalCheckinResultNotFound =>
      'CODIGO DE CHECK-IN NO ENCONTRADO';

  @override
  String get staffRehearsalCheckinResultWrongSlot =>
      'EL NINO NO ESTA INSCRITO EN ESTE SLOT';

  @override
  String get staffRehearsalCheckinResultAlreadyClosed =>
      'EL CHECK-IN DE ENSAYO YA ESTA CERRADO';

  @override
  String get staffRehearsalCheckinResultClosedNow =>
      'CHECK-IN DE ENSAYO CERRADO';

  @override
  String get staffRehearsalCheckinFieldChild => 'Nino';

  @override
  String get staffRehearsalCheckinFieldSlot => 'Slot';

  @override
  String get staffParkingFieldEvent => 'Evento';

  @override
  String get staffParkingFieldClient => 'Cliente';

  @override
  String get staffParkingFieldCar => 'Auto';

  @override
  String get staffParkingFieldPlateNumber => 'Placa';

  @override
  String get staffParkingFieldVipClient => 'Cliente VIP';

  @override
  String get staffShowProgressTitle => 'Progreso del show';

  @override
  String get staffCouldNotOpenDialer =>
      'No se pudo abrir el marcador telefonico';

  @override
  String get staffRealtimeTracking => 'SEGUIMIENTO EN TIEMPO REAL';

  @override
  String get staffEstimatedCompletion => 'COMPLETADO ESTIMADO';

  @override
  String get staffNoMainStagesInPlan =>
      'Aun no hay etapas principales en el plan.';

  @override
  String get staffStatusDone => 'HECHO';

  @override
  String get staffStatusInProgress => 'EN PROCESO';

  @override
  String get staffStatusPending => 'PENDIENTE';

  @override
  String get staffContactDetails => 'Datos de contacto';

  @override
  String get staffPrimaryParent => 'PADRE/MADRE PRINCIPAL';

  @override
  String staffIdLabel(String id) {
    return 'ID de personal: $id';
  }

  @override
  String get staffSwitchRole => 'Cambiar rol';

  @override
  String staffCurrentRoleLabel(String role) {
    return 'ACTUAL: $role';
  }

  @override
  String get staffRoleSubtitleScan => 'Escaneo QR y flujo de etapas';

  @override
  String get staffRoleSubtitleQrCheck =>
      'Marca etapa con brazalete y ficha del nino';

  @override
  String get staffRoleSubtitleSupervisor => 'Acceso completo y gestion';

  @override
  String get staffRoleSubtitleHostess => 'Soporte de invitados y zonas';

  @override
  String get staffRoleSubtitleParking => 'Valet parking: flujo y acceso';

  @override
  String get staffRoleSubtitleExtraZone => 'Acceso a BEVERAGE PACKAGE';

  @override
  String get staffRoleSubtitleBackstage => 'Acceso a BACKSTAGE PASS';

  @override
  String get staffRoleSubtitleRehearsalAdmin => 'Administracion de ensayos';

  @override
  String get staffRoleSubtitleRehearsalCheckin =>
      'Escaneo check-in por slots de ensayo';

  @override
  String get staffRoleSubtitleGiftIssue => 'Control de entrega de regalos';

  @override
  String get staffRoleSubtitleInterview => 'Flujo de entrevistas';

  @override
  String get staffRoleSubtitleLunches => 'Comidas y almuerzos';

  @override
  String get staffRoleSubtitleSuperadmin => 'Herramientas de superadmin';

  @override
  String get staffRoleSubtitlePhotographer =>
      'Escaneo QR con selector de etapa foto';

  @override
  String get staffRoleSubtitleStylist => 'Vestuario y maquillaje';

  @override
  String get staffHostessEntryMode => 'ENTRADA';

  @override
  String get staffHostessExitMode => 'SALIDA';

  @override
  String get staffHostessEntryHint =>
      'Escanea check-in o badge del nino para cerrar la etapa seleccionada y sincronizar Family Look';

  @override
  String get staffHostessExitHint =>
      'Escanea badge de nino o padre, revisa el progreso y cierra la etapa de salida';

  @override
  String get staffHostessEntryResultTitle => 'Resultado de escaneo de entrada';

  @override
  String get staffHostessExitResultTitle => 'Resultado de escaneo de salida';

  @override
  String get staffHostessFieldChildName => 'Nombre';

  @override
  String get staffHostessFieldParent => 'Padre/Madre';

  @override
  String get staffHostessFieldBrandsAndSupervisors => 'Marcas y supervisores';

  @override
  String get staffHostessFieldFamilyLook => 'Family Look';

  @override
  String get staffHostessFamilyLookEnabled => 'Family Look activado';

  @override
  String get staffHostessFieldStages => 'Etapas';

  @override
  String get staffHostessCloseEventAction => 'Cerrar evento';

  @override
  String get staffHostessStageAlreadySelectedOtherMode =>
      'Esta etapa ya esta seleccionada para el otro modo de hostess.';

  @override
  String staffHostessRequiredProgress(int completed, int total) {
    return 'Etapas obligatorias: $completed/$total';
  }
}
