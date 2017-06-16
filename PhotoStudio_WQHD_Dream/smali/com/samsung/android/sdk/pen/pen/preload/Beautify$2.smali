.class Lcom/samsung/android/sdk/pen/pen/preload/Beautify$2;
.super Ljava/lang/Object;
.source "Beautify.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/pen/preload/Beautify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/pen/pen/preload/Beautify;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/pen/pen/preload/Beautify;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify$2;->this$0:Lcom/samsung/android/sdk/pen/pen/preload/Beautify;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify$2;->this$0:Lcom/samsung/android/sdk/pen/pen/preload/Beautify;

    # getter for: Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mSettingListener:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface$ChangeListener;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->access$700(Lcom/samsung/android/sdk/pen/pen/preload/Beautify;)Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface$ChangeListener;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v3, 0xa

    if-ge v1, v3, :cond_0

    # getter for: Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->DEFAULT_SETTING_VALUES:[[I
    invoke-static {}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->access$800()[[I

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify$2;->this$0:Lcom/samsung/android/sdk/pen/pen/preload/Beautify;

    # getter for: Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mCurrentButtonIndex:I
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->access$100(Lcom/samsung/android/sdk/pen/pen/preload/Beautify;)I

    move-result v4

    aget-object v3, v3, v4

    aget v2, v3, v1

    packed-switch v1, :pswitch_data_0

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v3, 0x3b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_0
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify$2;->this$0:Lcom/samsung/android/sdk/pen/pen/preload/Beautify;

    # getter for: Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mSettingValues:[[I
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->access$900(Lcom/samsung/android/sdk/pen/pen/preload/Beautify;)[[I

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify$2;->this$0:Lcom/samsung/android/sdk/pen/pen/preload/Beautify;

    # getter for: Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mCurrentButtonIndex:I
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->access$100(Lcom/samsung/android/sdk/pen/pen/preload/Beautify;)I

    move-result v4

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aput v2, v3, v4

    goto :goto_1

    :pswitch_1
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify$2;->this$0:Lcom/samsung/android/sdk/pen/pen/preload/Beautify;

    # getter for: Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mSettingValues:[[I
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->access$900(Lcom/samsung/android/sdk/pen/pen/preload/Beautify;)[[I

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify$2;->this$0:Lcom/samsung/android/sdk/pen/pen/preload/Beautify;

    # getter for: Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mCurrentButtonIndex:I
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->access$100(Lcom/samsung/android/sdk/pen/pen/preload/Beautify;)I

    move-result v4

    aget-object v3, v3, v4

    const/4 v4, 0x1

    aput v2, v3, v4

    goto :goto_1

    :pswitch_2
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify$2;->this$0:Lcom/samsung/android/sdk/pen/pen/preload/Beautify;

    # getter for: Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mCursiveSeekBar:Landroid/widget/SeekBar;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->access$200(Lcom/samsung/android/sdk/pen/pen/preload/Beautify;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify$2;->this$0:Lcom/samsung/android/sdk/pen/pen/preload/Beautify;

    # getter for: Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mSettingValues:[[I
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->access$900(Lcom/samsung/android/sdk/pen/pen/preload/Beautify;)[[I

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify$2;->this$0:Lcom/samsung/android/sdk/pen/pen/preload/Beautify;

    # getter for: Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mCurrentButtonIndex:I
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->access$100(Lcom/samsung/android/sdk/pen/pen/preload/Beautify;)I

    move-result v4

    aget-object v3, v3, v4

    const/4 v4, 0x2

    aput v2, v3, v4

    goto :goto_1

    :pswitch_3
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify$2;->this$0:Lcom/samsung/android/sdk/pen/pen/preload/Beautify;

    # getter for: Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mSustenanceSeekBar:Landroid/widget/SeekBar;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->access$300(Lcom/samsung/android/sdk/pen/pen/preload/Beautify;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify$2;->this$0:Lcom/samsung/android/sdk/pen/pen/preload/Beautify;

    # getter for: Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mSettingValues:[[I
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->access$900(Lcom/samsung/android/sdk/pen/pen/preload/Beautify;)[[I

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify$2;->this$0:Lcom/samsung/android/sdk/pen/pen/preload/Beautify;

    # getter for: Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mCurrentButtonIndex:I
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->access$100(Lcom/samsung/android/sdk/pen/pen/preload/Beautify;)I

    move-result v4

    aget-object v3, v3, v4

    const/4 v4, 0x3

    aput v2, v3, v4

    goto :goto_1

    :pswitch_4
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify$2;->this$0:Lcom/samsung/android/sdk/pen/pen/preload/Beautify;

    # getter for: Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mSettingValues:[[I
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->access$900(Lcom/samsung/android/sdk/pen/pen/preload/Beautify;)[[I

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify$2;->this$0:Lcom/samsung/android/sdk/pen/pen/preload/Beautify;

    # getter for: Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mCurrentButtonIndex:I
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->access$100(Lcom/samsung/android/sdk/pen/pen/preload/Beautify;)I

    move-result v4

    aget-object v3, v3, v4

    const/4 v4, 0x5

    aput v2, v3, v4

    goto :goto_1

    :pswitch_5
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify$2;->this$0:Lcom/samsung/android/sdk/pen/pen/preload/Beautify;

    # getter for: Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mDummySeekBar:Landroid/widget/SeekBar;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->access$400(Lcom/samsung/android/sdk/pen/pen/preload/Beautify;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify$2;->this$0:Lcom/samsung/android/sdk/pen/pen/preload/Beautify;

    # getter for: Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mSettingValues:[[I
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->access$900(Lcom/samsung/android/sdk/pen/pen/preload/Beautify;)[[I

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify$2;->this$0:Lcom/samsung/android/sdk/pen/pen/preload/Beautify;

    # getter for: Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mCurrentButtonIndex:I
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->access$100(Lcom/samsung/android/sdk/pen/pen/preload/Beautify;)I

    move-result v4

    aget-object v3, v3, v4

    const/4 v4, 0x4

    aput v2, v3, v4

    goto/16 :goto_1

    :pswitch_6
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify$2;->this$0:Lcom/samsung/android/sdk/pen/pen/preload/Beautify;

    # getter for: Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mModulationSeekBar:Landroid/widget/SeekBar;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->access$500(Lcom/samsung/android/sdk/pen/pen/preload/Beautify;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify$2;->this$0:Lcom/samsung/android/sdk/pen/pen/preload/Beautify;

    # getter for: Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mSettingValues:[[I
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->access$900(Lcom/samsung/android/sdk/pen/pen/preload/Beautify;)[[I

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify$2;->this$0:Lcom/samsung/android/sdk/pen/pen/preload/Beautify;

    # getter for: Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mCurrentButtonIndex:I
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->access$100(Lcom/samsung/android/sdk/pen/pen/preload/Beautify;)I

    move-result v4

    aget-object v3, v3, v4

    const/4 v4, 0x6

    aput v2, v3, v4

    goto/16 :goto_1

    :pswitch_7
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify$2;->this$0:Lcom/samsung/android/sdk/pen/pen/preload/Beautify;

    # getter for: Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mSettingValues:[[I
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->access$900(Lcom/samsung/android/sdk/pen/pen/preload/Beautify;)[[I

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify$2;->this$0:Lcom/samsung/android/sdk/pen/pen/preload/Beautify;

    # getter for: Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mCurrentButtonIndex:I
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->access$100(Lcom/samsung/android/sdk/pen/pen/preload/Beautify;)I

    move-result v4

    aget-object v3, v3, v4

    const/4 v4, 0x7

    aput v2, v3, v4

    goto/16 :goto_1

    :pswitch_8
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify$2;->this$0:Lcom/samsung/android/sdk/pen/pen/preload/Beautify;

    # getter for: Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mSettingValues:[[I
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->access$900(Lcom/samsung/android/sdk/pen/pen/preload/Beautify;)[[I

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify$2;->this$0:Lcom/samsung/android/sdk/pen/pen/preload/Beautify;

    # getter for: Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mCurrentButtonIndex:I
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->access$100(Lcom/samsung/android/sdk/pen/pen/preload/Beautify;)I

    move-result v4

    aget-object v3, v3, v4

    const/16 v4, 0x8

    aput v2, v3, v4

    goto/16 :goto_1

    :pswitch_9
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify$2;->this$0:Lcom/samsung/android/sdk/pen/pen/preload/Beautify;

    # getter for: Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mSettingValues:[[I
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->access$900(Lcom/samsung/android/sdk/pen/pen/preload/Beautify;)[[I

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify$2;->this$0:Lcom/samsung/android/sdk/pen/pen/preload/Beautify;

    # getter for: Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mCurrentButtonIndex:I
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->access$100(Lcom/samsung/android/sdk/pen/pen/preload/Beautify;)I

    move-result v4

    aget-object v3, v3, v4

    const/16 v4, 0x9

    aput v2, v3, v4

    goto/16 :goto_1

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify$2;->this$0:Lcom/samsung/android/sdk/pen/pen/preload/Beautify;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->setAdvancedSetting(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify$2;->this$0:Lcom/samsung/android/sdk/pen/pen/preload/Beautify;

    # getter for: Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mSettingListener:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface$ChangeListener;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->access$700(Lcom/samsung/android/sdk/pen/pen/preload/Beautify;)Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface$ChangeListener;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface$ChangeListener;->onChanged(Ljava/lang/String;)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
