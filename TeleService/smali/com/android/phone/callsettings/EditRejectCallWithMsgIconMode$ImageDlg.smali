.class Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;
.super Landroid/app/Dialog;
.source "EditRejectCallWithMsgIconMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageDlg"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg$ImageAdapter;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDlgGrid:Landroid/widget/GridView;

.field private mPosition:I

.field final synthetic this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;


# direct methods
.method static synthetic -set0(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->mPosition:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->changedGridViewParams(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->mDlgGrid:Landroid/widget/GridView;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->mPosition:I

    iput-object p2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->mContext:Landroid/content/Context;

    return-void
.end method

.method private changedGridViewParams(I)V
    .locals 5

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->mDlgGrid:Landroid/widget/GridView;

    if-nez v1, :cond_0

    const-string/jumbo v1, "EditIconMode"

    const-string/jumbo v2, "changeGridViewParams() mDlgGrid is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->mDlgGrid:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->mDlgGrid:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    invoke-static {v2}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->-get10(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setColumnWidth(I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->mDlgGrid:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    invoke-static {v2}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->-get12(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    invoke-static {v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->-get11(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    invoke-static {v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->-get13(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    invoke-static {v3}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->-get14(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)I

    move-result v3

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->mDlgGrid:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->mDlgGrid:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    invoke-static {v2}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->-get4(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setColumnWidth(I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->mDlgGrid:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    invoke-static {v2}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->-get6(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    invoke-static {v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->-get5(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    invoke-static {v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->-get7(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    invoke-static {v3}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->-get8(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)I

    move-result v3

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->mPosition:I

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f0400bb

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->setContentView(I)V

    const v1, 0x7f100229

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->mDlgGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const-string/jumbo v1, "EditIconMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "current orientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->changedGridViewParams(I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->mDlgGrid:Landroid/widget/GridView;

    new-instance v2, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg$ImageAdapter;

    iget-object v3, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg$ImageAdapter;-><init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->mDlgGrid:Landroid/widget/GridView;

    new-instance v2, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg$1;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg$1;-><init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method
