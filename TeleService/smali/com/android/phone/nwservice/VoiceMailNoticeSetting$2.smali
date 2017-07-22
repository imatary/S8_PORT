.class Lcom/android/phone/nwservice/VoiceMailNoticeSetting$2;
.super Ljava/lang/Object;
.source "VoiceMailNoticeSetting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/nwservice/VoiceMailNoticeSetting;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/nwservice/VoiceMailNoticeSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/nwservice/VoiceMailNoticeSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/nwservice/VoiceMailNoticeSetting$2;->this$0:Lcom/android/phone/nwservice/VoiceMailNoticeSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/phone/nwservice/VoiceMailNoticeSetting$2;->this$0:Lcom/android/phone/nwservice/VoiceMailNoticeSetting;

    invoke-static {v0}, Lcom/android/phone/nwservice/VoiceMailNoticeSetting;->-get0(Lcom/android/phone/nwservice/VoiceMailNoticeSetting;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/nwservice/VoiceMailNoticeSetting$2;->this$0:Lcom/android/phone/nwservice/VoiceMailNoticeSetting;

    iget-object v1, p0, Lcom/android/phone/nwservice/VoiceMailNoticeSetting$2;->this$0:Lcom/android/phone/nwservice/VoiceMailNoticeSetting;

    invoke-static {v1}, Lcom/android/phone/nwservice/VoiceMailNoticeSetting;->-get0(Lcom/android/phone/nwservice/VoiceMailNoticeSetting;)Landroid/preference/Preference;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Lcom/android/phone/nwservice/VoiceMailNoticeSetting;->-wrap0(Lcom/android/phone/nwservice/VoiceMailNoticeSetting;ILandroid/preference/Preference;I)V

    :cond_0
    return-void
.end method
