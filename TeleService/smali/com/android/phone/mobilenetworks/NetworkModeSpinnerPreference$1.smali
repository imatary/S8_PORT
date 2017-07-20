.class Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$1;
.super Ljava/lang/Object;
.source "NetworkModeSpinnerPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$1;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$1;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->-get0(Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onItemSelected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$1;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-static {v0, p3}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->-wrap0(Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;I)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$1;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->-get0(Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onNothingSelected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
