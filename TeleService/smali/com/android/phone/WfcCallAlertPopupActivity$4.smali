.class Lcom/android/phone/WfcCallAlertPopupActivity$4;
.super Ljava/lang/Object;
.source "WfcCallAlertPopupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/WfcCallAlertPopupActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/WfcCallAlertPopupActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/WfcCallAlertPopupActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/WfcCallAlertPopupActivity$4;->this$0:Lcom/android/phone/WfcCallAlertPopupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string/jumbo v0, "WfcCallAlertPopupActivity"

    const-string/jumbo v1, "onClick: negative button"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/WfcCallAlertPopupActivity$4;->this$0:Lcom/android/phone/WfcCallAlertPopupActivity;

    invoke-virtual {v0}, Lcom/android/phone/WfcCallAlertPopupActivity;->finish()V

    return-void
.end method
