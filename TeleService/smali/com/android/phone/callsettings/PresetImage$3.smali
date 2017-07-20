.class Lcom/android/phone/callsettings/PresetImage$3;
.super Ljava/lang/Object;
.source "PresetImage.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/PresetImage;->setPresetImageSizeUseDefaultRatio()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/PresetImage;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/PresetImage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/PresetImage$3;->this$0:Lcom/android/phone/callsettings/PresetImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 9

    const-string/jumbo v6, "PresetImage"

    const-string/jumbo v7, "setPresetImageSizeUseDefaultRatio"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/phone/callsettings/PresetImage$3;->this$0:Lcom/android/phone/callsettings/PresetImage;

    invoke-static {v6}, Lcom/android/phone/callsettings/PresetImage;->-get3(Lcom/android/phone/callsettings/PresetImage;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v4

    iget-object v6, p0, Lcom/android/phone/callsettings/PresetImage$3;->this$0:Lcom/android/phone/callsettings/PresetImage;

    invoke-static {v6}, Lcom/android/phone/callsettings/PresetImage;->-get3(Lcom/android/phone/callsettings/PresetImage;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v5

    iget-object v6, p0, Lcom/android/phone/callsettings/PresetImage$3;->this$0:Lcom/android/phone/callsettings/PresetImage;

    invoke-virtual {v6}, Lcom/android/phone/callsettings/PresetImage;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0150

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v3, v6

    iget-object v6, p0, Lcom/android/phone/callsettings/PresetImage$3;->this$0:Lcom/android/phone/callsettings/PresetImage;

    invoke-virtual {v6}, Lcom/android/phone/callsettings/PresetImage;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0151

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v0, v6

    if-ge v4, v5, :cond_1

    iget-object v6, p0, Lcom/android/phone/callsettings/PresetImage$3;->this$0:Lcom/android/phone/callsettings/PresetImage;

    mul-int/lit8 v7, v0, 0x2

    sub-int v7, v4, v7

    iput v7, v6, Lcom/android/phone/callsettings/PresetImage;->presetWidth:I

    iget-object v6, p0, Lcom/android/phone/callsettings/PresetImage$3;->this$0:Lcom/android/phone/callsettings/PresetImage;

    iget-object v7, p0, Lcom/android/phone/callsettings/PresetImage$3;->this$0:Lcom/android/phone/callsettings/PresetImage;

    iget v7, v7, Lcom/android/phone/callsettings/PresetImage;->presetWidth:I

    mul-int/lit16 v7, v7, 0x90

    div-int/lit16 v7, v7, 0xb0

    iput v7, v6, Lcom/android/phone/callsettings/PresetImage;->presetHeight:I

    :cond_0
    :goto_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v6, p0, Lcom/android/phone/callsettings/PresetImage$3;->this$0:Lcom/android/phone/callsettings/PresetImage;

    iget v6, v6, Lcom/android/phone/callsettings/PresetImage;->presetWidth:I

    iget-object v7, p0, Lcom/android/phone/callsettings/PresetImage$3;->this$0:Lcom/android/phone/callsettings/PresetImage;

    iget v7, v7, Lcom/android/phone/callsettings/PresetImage;->presetHeight:I

    invoke-direct {v2, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v6, p0, Lcom/android/phone/callsettings/PresetImage$3;->this$0:Lcom/android/phone/callsettings/PresetImage;

    invoke-static {v6}, Lcom/android/phone/callsettings/PresetImage;->-get2(Lcom/android/phone/callsettings/PresetImage;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/android/phone/callsettings/PresetImage$3;->this$0:Lcom/android/phone/callsettings/PresetImage;

    iget-object v7, p0, Lcom/android/phone/callsettings/PresetImage$3;->this$0:Lcom/android/phone/callsettings/PresetImage;

    iget v7, v7, Lcom/android/phone/callsettings/PresetImage;->presetWidth:I

    iput v7, v6, Lcom/android/phone/callsettings/PresetImage;->outputX:I

    iget-object v6, p0, Lcom/android/phone/callsettings/PresetImage$3;->this$0:Lcom/android/phone/callsettings/PresetImage;

    iget-object v7, p0, Lcom/android/phone/callsettings/PresetImage$3;->this$0:Lcom/android/phone/callsettings/PresetImage;

    iget v7, v7, Lcom/android/phone/callsettings/PresetImage;->presetHeight:I

    iput v7, v6, Lcom/android/phone/callsettings/PresetImage;->outputY:I

    const-string/jumbo v6, "PresetImage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Ratio Width, outputX = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/callsettings/PresetImage$3;->this$0:Lcom/android/phone/callsettings/PresetImage;

    iget v8, v8, Lcom/android/phone/callsettings/PresetImage;->outputX:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "PresetImage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Ratio Height, outputY = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/callsettings/PresetImage$3;->this$0:Lcom/android/phone/callsettings/PresetImage;

    iget v8, v8, Lcom/android/phone/callsettings/PresetImage;->outputY:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/phone/callsettings/PresetImage$3;->this$0:Lcom/android/phone/callsettings/PresetImage;

    invoke-static {v6}, Lcom/android/phone/callsettings/PresetImage;->-wrap7(Lcom/android/phone/callsettings/PresetImage;)V

    iget-object v6, p0, Lcom/android/phone/callsettings/PresetImage$3;->this$0:Lcom/android/phone/callsettings/PresetImage;

    invoke-static {v6}, Lcom/android/phone/callsettings/PresetImage;->-get3(Lcom/android/phone/callsettings/PresetImage;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    :cond_1
    if-le v4, v5, :cond_0

    iget-object v6, p0, Lcom/android/phone/callsettings/PresetImage$3;->this$0:Lcom/android/phone/callsettings/PresetImage;

    mul-int/lit8 v7, v3, 0x2

    sub-int v7, v5, v7

    iput v7, v6, Lcom/android/phone/callsettings/PresetImage;->presetHeight:I

    iget-object v6, p0, Lcom/android/phone/callsettings/PresetImage$3;->this$0:Lcom/android/phone/callsettings/PresetImage;

    iget-object v7, p0, Lcom/android/phone/callsettings/PresetImage$3;->this$0:Lcom/android/phone/callsettings/PresetImage;

    iget v7, v7, Lcom/android/phone/callsettings/PresetImage;->presetHeight:I

    mul-int/lit16 v7, v7, 0xb0

    div-int/lit16 v7, v7, 0x90

    iput v7, v6, Lcom/android/phone/callsettings/PresetImage;->presetWidth:I

    goto/16 :goto_0
.end method
