.class Lcom/android/phone/photoring/PhotoRingScreen$9;
.super Ljava/lang/Object;
.source "PhotoRingScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/photoring/PhotoRingScreen;->checkMobileData()Z
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

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoRingScreen$9;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen$9;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/photoring/PhotoRingScreen;->-set7(Lcom/android/phone/photoring/PhotoRingScreen;Z)Z

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen$9;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-virtual {v0}, Lcom/android/phone/photoring/PhotoRingScreen;->finish()V

    return-void
.end method
