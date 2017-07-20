.class Lcom/android/phone/intprefix/CountryCodePreference$4;
.super Ljava/lang/Object;
.source "CountryCodePreference.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/intprefix/CountryCodePreference;->launchEditDialog(Landroid/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/intprefix/CountryCodePreference;

.field final synthetic val$editCode:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/phone/intprefix/CountryCodePreference;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/intprefix/CountryCodePreference$4;->this$0:Lcom/android/phone/intprefix/CountryCodePreference;

    iput-object p2, p0, Lcom/android/phone/intprefix/CountryCodePreference$4;->val$editCode:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 4

    const/16 v3, 0x2b

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "[+0-9]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "CountryCodePreference"

    const-string/jumbo v1, "character is not allowed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, ""

    return-object v0

    :cond_0
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {p4, v2}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "[+]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "CountryCodePreference"

    const-string/jumbo v1, "dest > 0, dest(0) = + , source includes +"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, ""

    return-object v0

    :cond_1
    if-nez p5, :cond_2

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_2

    const-string/jumbo v0, "CountryCodePreference"

    const-string/jumbo v1, "dest > 0, dstart = 0, move the cursor to last position"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/intprefix/CountryCodePreference$4;->val$editCode:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    const-string/jumbo v0, ""

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
