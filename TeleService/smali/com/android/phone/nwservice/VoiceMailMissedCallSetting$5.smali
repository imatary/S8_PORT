.class Lcom/android/phone/nwservice/VoiceMailMissedCallSetting$5;
.super Ljava/lang/Object;
.source "VoiceMailMissedCallSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/nwservice/VoiceMailMissedCallSetting;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/nwservice/VoiceMailMissedCallSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/nwservice/VoiceMailMissedCallSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/nwservice/VoiceMailMissedCallSetting$5;->this$0:Lcom/android/phone/nwservice/VoiceMailMissedCallSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/nwservice/VoiceMailMissedCallSetting$5;->this$0:Lcom/android/phone/nwservice/VoiceMailMissedCallSetting;

    const-string/jumbo v1, "*127*1#"

    iput-object v1, v0, Lcom/android/phone/nwservice/VoiceMailMissedCallSetting;->number:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/nwservice/VoiceMailMissedCallSetting$5;->this$0:Lcom/android/phone/nwservice/VoiceMailMissedCallSetting;

    iget-object v1, p0, Lcom/android/phone/nwservice/VoiceMailMissedCallSetting$5;->this$0:Lcom/android/phone/nwservice/VoiceMailMissedCallSetting;

    iget-object v1, v1, Lcom/android/phone/nwservice/VoiceMailMissedCallSetting;->number:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/phone/nwservice/VoiceMailMissedCallSetting;->-wrap0(Lcom/android/phone/nwservice/VoiceMailMissedCallSetting;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsJpn;->setChangeCurrentSetting(Z)V

    return-void
.end method
