.class Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended$3;
.super Ljava/lang/Object;
.source "MobileDataSuspended.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended;


# direct methods
.method constructor <init>(Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended$3;->this$0:Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended$3;->this$0:Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended;->-set0(Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended;Z)Z

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended$3;->this$0:Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended;

    invoke-virtual {v0}, Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended;->finish()V

    return-void
.end method
