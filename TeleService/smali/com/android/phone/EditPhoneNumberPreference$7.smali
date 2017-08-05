.class Lcom/android/phone/EditPhoneNumberPreference$7;
.super Landroid/text/InputFilter$LengthFilter;
.source "EditPhoneNumberPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EditPhoneNumberPreference;->makeInputFilter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EditPhoneNumberPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/EditPhoneNumberPreference;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/EditPhoneNumberPreference$7;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 6

    const/4 v2, 0x0

    const/16 v3, 0x64

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v1, ""

    return-object v1

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference$7;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, p1}, Lcom/android/phone/EditPhoneNumberPreference;->isValidNumber(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference$7;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-static {v1}, Lcom/android/phone/EditPhoneNumberPreference;->-get5(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0883

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference$7;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, v0, v5}, Lcom/android/phone/EditPhoneNumberPreference;->showErrorText(Ljava/lang/String;Z)V

    invoke-interface {p4}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v1

    if-lt v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference$7;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-static {v1}, Lcom/android/phone/EditPhoneNumberPreference;->-get5(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/content/Context;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f0d05b8

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference$7;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, v0, v5}, Lcom/android/phone/EditPhoneNumberPreference;->showErrorText(Ljava/lang/String;Z)V

    invoke-interface {p4}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference$7;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, v2, v4}, Lcom/android/phone/EditPhoneNumberPreference;->showErrorText(Ljava/lang/String;Z)V

    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method
