.class Lcom/android/phone/TtyNotificationDialog$2;
.super Ljava/lang/Object;
.source "TtyNotificationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/TtyNotificationDialog;->showTtyDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/TtyNotificationDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/TtyNotificationDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/TtyNotificationDialog$2;->this$0:Lcom/android/phone/TtyNotificationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/TtyNotificationDialog$2;->this$0:Lcom/android/phone/TtyNotificationDialog;

    invoke-virtual {v0}, Lcom/android/phone/TtyNotificationDialog;->finish()V

    return-void
.end method
