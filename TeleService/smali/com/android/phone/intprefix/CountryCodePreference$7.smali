.class Lcom/android/phone/intprefix/CountryCodePreference$7;
.super Ljava/lang/Object;
.source "CountryCodePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/intprefix/CountryCodePreference;->alertDialogChangeDefaultCountryCode(Lcom/android/phone/intprefix/InternationalPrefixPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/intprefix/CountryCodePreference;

.field final synthetic val$pref:Lcom/android/phone/intprefix/InternationalPrefixPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/intprefix/CountryCodePreference;Lcom/android/phone/intprefix/InternationalPrefixPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/intprefix/CountryCodePreference$7;->this$0:Lcom/android/phone/intprefix/CountryCodePreference;

    iput-object p2, p0, Lcom/android/phone/intprefix/CountryCodePreference$7;->val$pref:Lcom/android/phone/intprefix/InternationalPrefixPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/intprefix/CountryCodePreference$7;->this$0:Lcom/android/phone/intprefix/CountryCodePreference;

    iget-object v1, p0, Lcom/android/phone/intprefix/CountryCodePreference$7;->val$pref:Lcom/android/phone/intprefix/InternationalPrefixPreference;

    invoke-static {v0, v1}, Lcom/android/phone/intprefix/CountryCodePreference;->-wrap7(Lcom/android/phone/intprefix/CountryCodePreference;Lcom/android/phone/intprefix/InternationalPrefixPreference;)V

    return-void
.end method
