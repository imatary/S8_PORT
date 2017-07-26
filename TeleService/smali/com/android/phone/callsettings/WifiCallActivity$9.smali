.class Lcom/android/phone/callsettings/WifiCallActivity$9;
.super Ljava/lang/Object;
.source "WifiCallActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/WifiCallActivity;->showWfcInfoDialogForLatin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/WifiCallActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/WifiCallActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/WifiCallActivity$9;->this$0:Lcom/android/phone/callsettings/WifiCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiCallActivity$9;->this$0:Lcom/android/phone/callsettings/WifiCallActivity;

    invoke-static {v0}, Lcom/android/phone/callsettings/WifiCallActivity;->-get1(Lcom/android/phone/callsettings/WifiCallActivity;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method
