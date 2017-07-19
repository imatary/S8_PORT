.class Lcom/samsung/android/app/omcagent/ui/WifiConfirmDialog$1;
.super Ljava/lang/Object;
.source "WifiConfirmDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/omcagent/ui/WifiConfirmDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/omcagent/ui/WifiConfirmDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/omcagent/ui/WifiConfirmDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/ui/WifiConfirmDialog$1;->this$0:Lcom/samsung/android/app/omcagent/ui/WifiConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/WifiConfirmDialog$1;->this$0:Lcom/samsung/android/app/omcagent/ui/WifiConfirmDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/ui/WifiConfirmDialog;->onStart()V

    return-void
.end method
