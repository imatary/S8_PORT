.class Lcom/android/phone/CallForwardingActivity$23;
.super Ljava/lang/Object;
.source "CallForwardingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallForwardingActivity;->AlertDialogCallForwardingCancelforwarding()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallForwardingActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/CallForwardingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CallForwardingActivity$23;->this$0:Lcom/android/phone/CallForwardingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
