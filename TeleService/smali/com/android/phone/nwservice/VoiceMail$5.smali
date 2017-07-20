.class Lcom/android/phone/nwservice/VoiceMail$5;
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

    iput-object p1, p0, Lcom/android/phone/nwservice/VoiceMail$5;->this$0:Lcom/android/phone/nwservice/VoiceMail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/nwservice/VoiceMail$5;->this$0:Lcom/android/phone/nwservice/VoiceMail;

    invoke-static {v0}, Lcom/android/phone/nwservice/VoiceMail;->-wrap3(Lcom/android/phone/nwservice/VoiceMail;)V

    return-void
.end method
