.class Lcom/android/phone/nwservice/BlockingNuisanceNumber$5;
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

    iput-object p1, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber$5;->this$0:Lcom/android/phone/nwservice/BlockingNuisanceNumber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string/jumbo v0, "BlockingNuisanceNumber"

    const-string/jumbo v1, "onClick LastCallNumberButton"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/nwservice/BlockingNuisanceNumber$5;->this$0:Lcom/android/phone/nwservice/BlockingNuisanceNumber;

    const-string/jumbo v1, "*122#"

    invoke-static {v0, v1}, Lcom/android/phone/nwservice/BlockingNuisanceNumber;->-wrap0(Lcom/android/phone/nwservice/BlockingNuisanceNumber;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsJpn;->setChangeCurrentSetting(Z)V

    return-void
.end method
