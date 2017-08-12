.class public Lcom/android/bluetooth/opp/BluetoothOppTransferHistoryClearActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothOppTransferHistoryClearActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothOppTransferHistoryClearActivity"

.field private static final V:Z


# instance fields
.field private mDescription:Ljava/lang/CharSequence;

.field private mErrorContent:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/opp/Constants;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistoryClearActivity;->V:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistoryClearActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040008

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0e000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistoryClearActivity;->mDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v1
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistoryClearActivity;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistoryClearActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistoryClearActivity;->mDescription:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistoryClearActivity;->mDescription:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistoryClearActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    packed-switch p2, :pswitch_data_0

    :goto_0
    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppTransferHistoryClearActivity;->V:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BluetoothOppTransferHistoryClearActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "in onClick clearPopupResult :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v2, "clearresult"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistoryClearActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistoryClearActivity;->finish()V

    return-void

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistoryClearActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "content"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistoryClearActivity;->mErrorContent:I

    iget v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistoryClearActivity;->mErrorContent:I

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistoryClearActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistoryClearActivity;->mDescription:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistoryClearActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistoryClearActivity;->createView()Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v2, 0x7f0a0080

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistoryClearActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const v2, 0x7f0a000e

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistoryClearActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistoryClearActivity;->setupAlert()V

    return-void
.end method
