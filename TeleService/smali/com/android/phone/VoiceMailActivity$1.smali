.class Lcom/android/phone/VoiceMailActivity$1;
.super Ljava/lang/Object;
.source "VoiceMailActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/VoiceMailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/VoiceMailActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/VoiceMailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/VoiceMailActivity$1;->this$0:Lcom/android/phone/VoiceMailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "play_voicemail_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/VoiceMailActivity$1;->this$0:Lcom/android/phone/VoiceMailActivity;

    invoke-static {v0}, Lcom/android/phone/VoiceMailActivity;->-wrap3(Lcom/android/phone/VoiceMailActivity;)V

    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "start_voicemail1_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/VoiceMailActivity$1;->this$0:Lcom/android/phone/VoiceMailActivity;

    invoke-static {v0}, Lcom/android/phone/VoiceMailActivity;->-wrap4(Lcom/android/phone/VoiceMailActivity;)V

    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "start_voicemail2_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/VoiceMailActivity$1;->this$0:Lcom/android/phone/VoiceMailActivity;

    invoke-static {v0}, Lcom/android/phone/VoiceMailActivity;->-wrap5(Lcom/android/phone/VoiceMailActivity;)V

    return v2

    :cond_2
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "stop_voicemail_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/VoiceMailActivity$1;->this$0:Lcom/android/phone/VoiceMailActivity;

    invoke-static {v0}, Lcom/android/phone/VoiceMailActivity;->-wrap6(Lcom/android/phone/VoiceMailActivity;)V

    return v2

    :cond_3
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "edit_reply_message_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/VoiceMailActivity$1;->this$0:Lcom/android/phone/VoiceMailActivity;

    invoke-static {v0}, Lcom/android/phone/VoiceMailActivity;->-wrap0(Lcom/android/phone/VoiceMailActivity;)V

    return v2

    :cond_4
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "nwservice_english_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/VoiceMailActivity$1;->this$0:Lcom/android/phone/VoiceMailActivity;

    invoke-static {v0}, Lcom/android/phone/VoiceMailActivity;->-wrap1(Lcom/android/phone/VoiceMailActivity;)V

    return v2

    :cond_5
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "nwservice_japan_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/VoiceMailActivity$1;->this$0:Lcom/android/phone/VoiceMailActivity;

    invoke-static {v0}, Lcom/android/phone/VoiceMailActivity;->-wrap2(Lcom/android/phone/VoiceMailActivity;)V

    return v2

    :cond_6
    const/4 v0, 0x0

    return v0
.end method
