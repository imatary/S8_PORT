.class Lcom/android/phone/intprefix/InternationalCallPrefixPreference$6;
.super Ljava/lang/Object;
.source "InternationalCallPrefixPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/intprefix/InternationalCallPrefixPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/intprefix/InternationalCallPrefixPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference$6;->this$0:Lcom/android/phone/intprefix/InternationalCallPrefixPreference;

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
    iget-object v0, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference$6;->this$0:Lcom/android/phone/intprefix/InternationalCallPrefixPreference;

    iget-object v1, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference$6;->this$0:Lcom/android/phone/intprefix/InternationalCallPrefixPreference;

    invoke-static {v1}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->-get1(Lcom/android/phone/intprefix/InternationalCallPrefixPreference;)Landroid/preference/Preference;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->-wrap1(Lcom/android/phone/intprefix/InternationalCallPrefixPreference;Landroid/preference/Preference;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference$6;->this$0:Lcom/android/phone/intprefix/InternationalCallPrefixPreference;

    iget-object v1, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference$6;->this$0:Lcom/android/phone/intprefix/InternationalCallPrefixPreference;

    invoke-static {v1}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->-get1(Lcom/android/phone/intprefix/InternationalCallPrefixPreference;)Landroid/preference/Preference;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->-wrap0(Lcom/android/phone/intprefix/InternationalCallPrefixPreference;Landroid/preference/Preference;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
