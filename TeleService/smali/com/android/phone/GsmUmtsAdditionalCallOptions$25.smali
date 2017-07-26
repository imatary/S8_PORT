.class Lcom/android/phone/GsmUmtsAdditionalCallOptions$25;
.super Ljava/lang/Object;
.source "GsmUmtsAdditionalCallOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/GsmUmtsAdditionalCallOptions;->createDialogDropDownTty(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$25;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string/jumbo v0, "GsmUmtsAdditionalCallOptions"

    const-string/jumbo v1, "createDialogDropDownTty negative"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v0, "preferred_tty_mode"

    invoke-static {}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->-get6()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/phone/TeleServiceSystemDB;->setSecureSettingDB(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$25;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-static {v0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->-get3(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Lcom/android/phone/DropDownPreference;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->-get6()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/DropDownPreference;->setSelectedItem(I)V

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$25;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-static {v0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->-wrap10(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
