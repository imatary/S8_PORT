.class Lcom/android/phone/CallForwardingActivity$6;
.super Ljava/lang/Object;
.source "CallForwardingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallForwardingActivity;->AlertDialogCallForwardingOnBusy()V
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

    iput-object p1, p0, Lcom/android/phone/CallForwardingActivity$6;->this$0:Lcom/android/phone/CallForwardingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.CALL"

    const-string/jumbo v3, "tel:*90"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallForwardingActivity$6;->this$0:Lcom/android/phone/CallForwardingActivity;

    invoke-virtual {v2, v1}, Lcom/android/phone/CallForwardingActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
