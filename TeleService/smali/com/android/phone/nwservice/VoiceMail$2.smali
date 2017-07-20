.class Lcom/android/phone/nwservice/VoiceMail$2;
.super Ljava/lang/Object;
.source "VoiceMail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/nwservice/VoiceMail;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/nwservice/VoiceMail;


# direct methods
.method constructor <init>(Lcom/android/phone/nwservice/VoiceMail;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/nwservice/VoiceMail$2;->this$0:Lcom/android/phone/nwservice/VoiceMail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/nwservice/VoiceMail$2;->this$0:Lcom/android/phone/nwservice/VoiceMail;

    iget-object v1, p0, Lcom/android/phone/nwservice/VoiceMail$2;->this$0:Lcom/android/phone/nwservice/VoiceMail;

    iget v1, v1, Lcom/android/phone/nwservice/VoiceMail;->msgID:I

    invoke-virtual {v0, v1}, Lcom/android/phone/nwservice/VoiceMail;->removeDialog(I)V

    iget-object v0, p0, Lcom/android/phone/nwservice/VoiceMail$2;->this$0:Lcom/android/phone/nwservice/VoiceMail;

    iget v0, v0, Lcom/android/phone/nwservice/VoiceMail;->msgID:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/nwservice/VoiceMail$2;->this$0:Lcom/android/phone/nwservice/VoiceMail;

    iget v0, v0, Lcom/android/phone/nwservice/VoiceMail;->msgID:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/phone/nwservice/VoiceMail$2;->this$0:Lcom/android/phone/nwservice/VoiceMail;

    iget-object v1, p0, Lcom/android/phone/nwservice/VoiceMail$2;->this$0:Lcom/android/phone/nwservice/VoiceMail;

    iget-object v1, v1, Lcom/android/phone/nwservice/VoiceMail;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/phone/nwservice/VoiceMail;->placeVoiceMailCall(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/nwservice/VoiceMail$2;->this$0:Lcom/android/phone/nwservice/VoiceMail;

    iget-object v1, p0, Lcom/android/phone/nwservice/VoiceMail$2;->this$0:Lcom/android/phone/nwservice/VoiceMail;

    iget-object v1, v1, Lcom/android/phone/nwservice/VoiceMail;->number:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/phone/nwservice/VoiceMail;->-wrap2(Lcom/android/phone/nwservice/VoiceMail;Ljava/lang/String;)V

    goto :goto_0
.end method
