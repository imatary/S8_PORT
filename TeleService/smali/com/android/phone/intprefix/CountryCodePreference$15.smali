.class Lcom/android/phone/intprefix/CountryCodePreference$15;
.super Ljava/lang/Object;
.source "CountryCodePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/intprefix/CountryCodePreference;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/intprefix/CountryCodePreference;


# direct methods
.method constructor <init>(Lcom/android/phone/intprefix/CountryCodePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/intprefix/CountryCodePreference$15;->this$0:Lcom/android/phone/intprefix/CountryCodePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/intprefix/CountryCodePreference$15;->this$0:Lcom/android/phone/intprefix/CountryCodePreference;

    iget-object v1, p0, Lcom/android/phone/intprefix/CountryCodePreference$15;->this$0:Lcom/android/phone/intprefix/CountryCodePreference;

    invoke-static {v1}, Lcom/android/phone/intprefix/CountryCodePreference;->-get1(Lcom/android/phone/intprefix/CountryCodePreference;)Landroid/preference/Preference;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/intprefix/CountryCodePreference;->-wrap2(Lcom/android/phone/intprefix/CountryCodePreference;Landroid/preference/Preference;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/intprefix/CountryCodePreference$15;->this$0:Lcom/android/phone/intprefix/CountryCodePreference;

    iget-object v1, p0, Lcom/android/phone/intprefix/CountryCodePreference$15;->this$0:Lcom/android/phone/intprefix/CountryCodePreference;

    invoke-static {v1}, Lcom/android/phone/intprefix/CountryCodePreference;->-get1(Lcom/android/phone/intprefix/CountryCodePreference;)Landroid/preference/Preference;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/intprefix/CountryCodePreference;->-wrap1(Lcom/android/phone/intprefix/CountryCodePreference;Landroid/preference/Preference;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
