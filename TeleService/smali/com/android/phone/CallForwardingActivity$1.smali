.class Lcom/android/phone/CallForwardingActivity$1;
.super Ljava/lang/Object;
.source "CallForwardingActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallForwardingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallForwardingActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/CallForwardingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CallForwardingActivity$1;->this$0:Lcom/android/phone/CallForwardingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "forward_on_no_reply_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallForwardingActivity$1;->this$0:Lcom/android/phone/CallForwardingActivity;

    invoke-static {v0}, Lcom/android/phone/CallForwardingActivity;->-wrap0(Lcom/android/phone/CallForwardingActivity;)V

    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "forward_on_busy_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallForwardingActivity$1;->this$0:Lcom/android/phone/CallForwardingActivity;

    invoke-static {v0}, Lcom/android/phone/CallForwardingActivity;->-wrap3(Lcom/android/phone/CallForwardingActivity;)V

    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "full_forwarding_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/CallForwardingActivity$1;->this$0:Lcom/android/phone/CallForwardingActivity;

    invoke-static {v0}, Lcom/android/phone/CallForwardingActivity;->-wrap2(Lcom/android/phone/CallForwardingActivity;)V

    return v2

    :cond_2
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "selective_forwarding_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/CallForwardingActivity$1;->this$0:Lcom/android/phone/CallForwardingActivity;

    invoke-static {v0}, Lcom/android/phone/CallForwardingActivity;->-wrap4(Lcom/android/phone/CallForwardingActivity;)V

    return v2

    :cond_3
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "cancel_forwarding_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/CallForwardingActivity$1;->this$0:Lcom/android/phone/CallForwardingActivity;

    invoke-static {v0}, Lcom/android/phone/CallForwardingActivity;->-wrap1(Lcom/android/phone/CallForwardingActivity;)V

    return v2

    :cond_4
    const/4 v0, 0x0

    return v0
.end method
