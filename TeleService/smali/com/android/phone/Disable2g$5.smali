.class Lcom/android/phone/Disable2g$5;
.super Ljava/lang/Object;
.source "Disable2g.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/Disable2g;->createVolteEnableWarningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/Disable2g;


# direct methods
.method constructor <init>(Lcom/android/phone/Disable2g;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/Disable2g$5;->this$0:Lcom/android/phone/Disable2g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string/jumbo v0, "Disable2g"

    const-string/jumbo v1, "enable mDisable2g"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/Disable2g$5;->this$0:Lcom/android/phone/Disable2g;

    invoke-static {v0}, Lcom/android/phone/Disable2g;->-get1(Lcom/android/phone/Disable2g;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setDisable2g(ILandroid/os/Message;)V

    return-void
.end method
