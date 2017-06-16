.class Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$1;
.super Ljava/lang/Object;
.source "BluetoothPbapVcardManager.java"

# interfaces
.implements Lcom/android/vcard/VCardPhoneNumberTranslationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeContactsAndSendVCards(Ljavax/obex/Operation;Landroid/database/Cursor;ZLjava/lang/String;Z[B)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueReceived(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    .locals 5

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c

    const/16 v3, 0x70

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3b

    const/16 v4, 0x77

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    invoke-static {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->-get2(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    invoke-static {v2, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->-set1(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-object v0
.end method
