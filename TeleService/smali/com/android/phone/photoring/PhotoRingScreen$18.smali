.class Lcom/android/phone/photoring/PhotoRingScreen$18;
.super Ljava/lang/Object;
.source "PhotoRingScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/photoring/PhotoRingScreen;->resizeVideo(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/photoring/PhotoRingScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/photoring/PhotoRingScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoRingScreen$18;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen$18;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mNewResize:Lcom/android/phone/photoring/PhotoRingScreen$ResizeThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen$18;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mNewResize:Lcom/android/phone/photoring/PhotoRingScreen$ResizeThread;

    invoke-virtual {v0}, Lcom/android/phone/photoring/PhotoRingScreen$ResizeThread;->interrupt()V

    :cond_0
    return-void
.end method
