.class Lcom/android/phone/GsmUmtsCallForwardOptions$4;
.super Ljava/lang/Object;
.source "GsmUmtsCallForwardOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/GsmUmtsCallForwardOptions;->showAlertDialogPlayVoicemailMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GsmUmtsCallForwardOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/GsmUmtsCallForwardOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions$4;->this$0:Lcom/android/phone/GsmUmtsCallForwardOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions$4;->this$0:Lcom/android/phone/GsmUmtsCallForwardOptions;

    const-string/jumbo v1, "tel:1417"

    invoke-static {v0, v1}, Lcom/android/phone/GsmUmtsCallForwardOptions;->-wrap0(Lcom/android/phone/GsmUmtsCallForwardOptions;Ljava/lang/String;)V

    return-void
.end method
