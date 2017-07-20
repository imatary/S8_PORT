.class Lcom/android/phone/NetworkNotificationUI$11;
.super Ljava/lang/Object;
.source "NetworkNotificationUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkNotificationUI;->showDataSelectionPopUpByDataKey()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkNotificationUI;

.field final synthetic val$dialogContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkNotificationUI;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI$11;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iput-object p2, p0, Lcom/android/phone/NetworkNotificationUI$11;->val$dialogContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$11;->this$0:Lcom/android/phone/NetworkNotificationUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/NetworkNotificationUI;->-set0(Lcom/android/phone/NetworkNotificationUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$11;->val$dialogContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/NetworkNotificationUI;->sendRoamingOffIntentKOR(Landroid/content/Context;)V

    return-void
.end method
