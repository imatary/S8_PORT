.class Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$NetworkModeSpinner;
.super Landroid/widget/Spinner;
.source "NetworkModeSpinnerPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkModeSpinner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;


# direct methods
.method public constructor <init>(Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$NetworkModeSpinner;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-direct {p0, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 4

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$NetworkModeSpinner;->getSelectedItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$NetworkModeSpinner;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->-get2(Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$NetworkModeSpinner;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->-get3(Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$NetworkModeSpinner;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->-get0(Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onLayout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$NetworkModeSpinner;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-static {v1, v0}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->-wrap0(Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;I)V

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/Spinner;->onLayout(ZIIII)V

    return-void
.end method
