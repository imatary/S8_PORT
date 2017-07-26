.class public Lcom/android/phone/nwservice/BlockingNuisanceNumber;
.super Landroid/app/Activity;
.source "BlockingNuisanceNumber.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/nwservice/BlockingNuisanceNumber$1;
    }
.end annotation


# static fields
.field private static final CONTACT_IMPORT_INTENT:Landroid/content/Intent;

.field private static final NUM_PROJECTION:[Ljava/lang/String;

.field private static final SEC_CONTACT_IMPORT_INTENT:Landroid/content/Intent;


# instance fields
.field AddButton:Landroid/widget/ImageView;

.field ContactsButton:Landroid/widget/Button;

.field LastCallNumberButton:Landroid/widget/Button;

.field LogsButton:Landroid/widget/Button;

.field private handler:Landroid/os/Handler;

.field private header:Landroid/view/View;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private list:Landroid/widget/ListView;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneNumberEdit:Landroid/widget/EditText;

.field private mTelMan:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/nwservice/BlockingNuisanceNumber;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/nwservice/BlockingNuisanceNumber;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->mPhoneNumberEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/phone/nwservice/BlockingNuisanceNumber;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->procUSSDCommand(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "display_name"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "data1"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->NUM_PROJECTION:[Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    sget-object v0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    const-string/jumbo v1, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "intent.action.INTERACTION_TAB"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->SEC_CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    sget-object v0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->SEC_CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    const-string/jumbo v1, "additional"

    const-string/jumbo v2, "phone-multi"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->SEC_CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    const-string/jumbo v1, "maxRecipientCount"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->SEC_CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->mPhoneNumberEdit:Landroid/widget/EditText;

    new-instance v0, Lcom/android/phone/nwservice/BlockingNuisanceNumber$1;

    invoke-direct {v0, p0}, Lcom/android/phone/nwservice/BlockingNuisanceNumber$1;-><init>(Lcom/android/phone/nwservice/BlockingNuisanceNumber;)V

    iput-object v0, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->handler:Landroid/os/Handler;

    return-void
.end method

.method private procUSSDCommand(Ljava/lang/String;)V
    .locals 5

    const/16 v4, 0x3ed

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->showDialog(I)V

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsJpn;->setChangeCurrentSetting(Z)V

    const-string/jumbo v1, "BlockingNuisanceNumber"

    const-string/jumbo v2, "skip USSD request"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x3e9

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->showDialog(I)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v4}, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->showDialog(I)V

    const-string/jumbo v1, "BlockingNuisanceNumber"

    const-string/jumbo v2, "CallStateException"

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public clickSaveBtn()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v3, "BlockingNuisanceNumber"

    const-string/jumbo v4, "clickSaveBtn"

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->mPhoneNumberEdit:Landroid/widget/EditText;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->mPhoneNumberEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0d0ba7

    invoke-virtual {p0, v4}, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    iget-object v3, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->mPhoneNumberEdit:Landroid/widget/EditText;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->mPhoneNumberEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "*122*1*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->procUSSDCommand(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->mPhoneNumberEdit:Landroid/widget/EditText;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->mPhoneNumberEdit:Landroid/widget/EditText;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-static {v6}, Lcom/android/phone/PhoneUtilsJpn;->setChangeCurrentSetting(Z)V

    goto :goto_0
.end method

.method public clickSecSearchContactBtn()V
    .locals 4

    const-string/jumbo v1, "BlockingNuisanceNumber"

    const-string/jumbo v2, "onClick SecSearchContactsButton"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v1, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->SEC_CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BlockingNuisanceNumber"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ActivityNotFoundException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isAvailableAddbutton()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->mPhoneNumberEdit:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->mPhoneNumberEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->mPhoneNumberEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->AddButton:Landroid/widget/ImageView;

    const v1, 0x7f0201b0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->AddButton:Landroid/widget/ImageView;

    const v1, 0x7f0d085a

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->AddButton:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->AddButton:Landroid/widget/ImageView;

    const v1, 0x7f020161

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->AddButton:Landroid/widget/ImageView;

    const v1, 0x7f0d056a

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    const/4 v5, -0x1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v2, ""

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->handler:Landroid/os/Handler;

    new-instance v6, Lcom/android/phone/nwservice/BlockingNuisanceNumber$7;

    invoke-direct {v6, p0}, Lcom/android/phone/nwservice/BlockingNuisanceNumber$7;-><init>(Lcom/android/phone/nwservice/BlockingNuisanceNumber;)V

    const-wide/16 v8, 0xc8

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->mPhoneNumberEdit:Landroid/widget/EditText;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->mPhoneNumberEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    return-void

    :pswitch_0
    if-ne p2, v5, :cond_0

    const-string/jumbo v5, "BlockingNuisanceNumber"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[LogsPickerActivity.onActivityResult] uri:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "NUMBER"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->mPhoneNumberEdit:Landroid/widget/EditText;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->mPhoneNumberEdit:Landroid/widget/EditText;

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    if-ne p2, v5, :cond_3

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "result"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v5, 0x3b

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->mPhoneNumberEdit:Landroid/widget/EditText;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->mPhoneNumberEdit:Landroid/widget/EditText;

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const-string/jumbo v5, "BlockingNuisanceNumber"

    const-string/jumbo v6, "onActivityResult: cancelled."

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f04001c

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->setContentView(I)V

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->mTelMan:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->handler:Landroid/os/Handler;

    const/16 v3, 0x34

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/internal/telephony/Phone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    const v1, 0x7f100051

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->list:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->list:Landroid/widget/ListView;

    const v3, 0x7f04001d

    invoke-virtual {v1, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->header:Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->header:Landroid/view/View;

    const v2, 0x7f100061

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->mPhoneNumberEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->mPhoneNumberEdit:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->mPhoneNumberEdit:Landroid/widget/EditText;

    const v2, 0x7f0d0b8f

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    iget-object v1, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->mPhoneNumberEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v1, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->mPhoneNumberEdit:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->header:Landroid/view/View;

    const v2, 0x7f10006b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->AddButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->mPhoneNumberEdit:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->mPhoneNumberEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->mPhoneNumberEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->AddButton:Landroid/widget/ImageView;

    const v2, 0x7f0201b0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->AddButton:Landroid/widget/ImageView;

    const v2, 0x7f0d085a

    invoke-virtual {p0, v2}, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->AddButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/phone/nwservice/BlockingNuisanceNumber$2;

    invoke-direct {v2, p0}, Lcom/android/phone/nwservice/BlockingNuisanceNumber$2;-><init>(Lcom/android/phone/nwservice/BlockingNuisanceNumber;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->isAvailableAddbutton()V

    iget-object v1, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->header:Landroid/view/View;

    const v2, 0x7f10006c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->LogsButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->LogsButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/phone/nwservice/BlockingNuisanceNumber$3;

    invoke-direct {v2, p0}, Lcom/android/phone/nwservice/BlockingNuisanceNumber$3;-><init>(Lcom/android/phone/nwservice/BlockingNuisanceNumber;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->header:Landroid/view/View;

    const v2, 0x7f10006d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->ContactsButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->ContactsButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/phone/nwservice/BlockingNuisanceNumber$4;

    invoke-direct {v2, p0}, Lcom/android/phone/nwservice/BlockingNuisanceNumber$4;-><init>(Lcom/android/phone/nwservice/BlockingNuisanceNumber;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->header:Landroid/view/View;

    const v2, 0x7f10006e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->LastCallNumberButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->LastCallNumberButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/phone/nwservice/BlockingNuisanceNumber$5;

    invoke-direct {v2, p0}, Lcom/android/phone/nwservice/BlockingNuisanceNumber$5;-><init>(Lcom/android/phone/nwservice/BlockingNuisanceNumber;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->LogsButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->ContactsButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->header:Landroid/view/View;

    invoke-virtual {v1, v2, v5, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-object v1, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->list:Landroid/widget/ListView;

    new-instance v2, Landroid/widget/ArrayAdapter;

    new-array v3, v4, [Ljava/lang/String;

    const v4, 0x1090003

    invoke-direct {v2, p0, v4, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const-string/jumbo v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/android/phone/nwservice/BlockingNuisanceNumber$6;

    invoke-direct {v2, p0}, Lcom/android/phone/nwservice/BlockingNuisanceNumber$6;-><init>(Lcom/android/phone/nwservice/BlockingNuisanceNumber;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    const v1, 0x7f0d0b86

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->AddButton:Landroid/widget/ImageView;

    const v2, 0x7f020161

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->AddButton:Landroid/widget/ImageView;

    const v2, 0x7f0d056a

    invoke-virtual {p0, v2}, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    const/4 v5, 0x0

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v4

    return-object v4

    :sswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const v4, 0x7f0d0b0b

    invoke-virtual {p0, v4}, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-object v0

    :sswitch_1
    const v3, 0x7f0d0392

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v3}, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0d056c

    invoke-virtual {p0, v4}, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_0
        0x3ed -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7

    const v6, 0x7f0d0571

    const v2, 0x7f0d056d

    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x4

    invoke-interface {p1, v3, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x3

    invoke-interface {p1, v3, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020095

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x2

    invoke-interface {p1, v3, v1, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v3, v4, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020098

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiComplete(Landroid/os/Handler;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    const/4 v7, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    return v5

    :sswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v5, "com.android.phone"

    const-string/jumbo v6, "com.android.phone.nwservice.NuisanceCallBlockingService"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v5, 0x4000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->finish()V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v5, "BlockingNuisanceNumber"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startActivity() failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :sswitch_1
    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->mPhoneNumberEdit:Landroid/widget/EditText;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->mPhoneNumberEdit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d0ba7

    invoke-virtual {p0, v6}, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    iget-object v5, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->mPhoneNumberEdit:Landroid/widget/EditText;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->mPhoneNumberEdit:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "*122*1*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->procUSSDCommand(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->mPhoneNumberEdit:Landroid/widget/EditText;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->mPhoneNumberEdit:Landroid/widget/EditText;

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/android/phone/PhoneUtilsJpn;->setChangeCurrentSetting(Z)V

    goto/16 :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->finish()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_2
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->mPhoneNumberEdit:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->isAvailableAddbutton()V

    return-void
.end method
