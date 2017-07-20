.class Lcom/android/phone/nwservice/BlockingNuisanceNumber$4;
.super Ljava/lang/Object;
.source "BlockingNuisanceNumber.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/nwservice/BlockingNuisanceNumber;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/nwservice/BlockingNuisanceNumber;


# direct methods
.method constructor <init>(Lcom/android/phone/nwservice/BlockingNuisanceNumber;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber$4;->this$0:Lcom/android/phone/nwservice/BlockingNuisanceNumber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const-string/jumbo v2, "BlockingNuisanceNumber"

    const-string/jumbo v3, "onClick ContactsButton"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getContactsPackageName()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber$4;->this$0:Lcom/android/phone/nwservice/BlockingNuisanceNumber;

    invoke-static {}, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->-get0()Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "BlockingNuisanceNumber"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startActivityForResult() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
