.class Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;
.super Ljava/lang/Object;
.source "Advance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HistoryItem"
.end annotation


# instance fields
.field blc:I

.field colorPickedArray:[I

.field hueArray:[I

.field isWB:Z

.field lumArray:[I

.field mapping_table:[I

.field modified:[I

.field pickerSize:I

.field satArray:[I

.field stateId:I

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

.field wb:I


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->stateId:I

    return-void
.end method

.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;I[I[I[I[I[I[IIZII)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->stateId:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->stateId:I

    and-int/lit8 v0, v1, -0x10

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    array-length v1, p3

    invoke-static {p3, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->modified:[I

    array-length v1, p4

    invoke-static {p4, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->mapping_table:[I

    goto :goto_0

    :sswitch_1
    array-length v1, p5

    invoke-static {p5, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->hueArray:[I

    array-length v1, p6

    invoke-static {p6, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->satArray:[I

    array-length v1, p7

    invoke-static {p7, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->lumArray:[I

    array-length v1, p8

    invoke-static {p8, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->colorPickedArray:[I

    iput p9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->pickerSize:I

    iput-boolean p10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->isWB:Z

    iput p11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->wb:I

    goto :goto_0

    :sswitch_2
    iput p12, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->blc:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x90010 -> :sswitch_0
        0x90020 -> :sswitch_1
        0x90030 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method protected clone()Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;
    .locals 13

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->stateId:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->modified:[I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->mapping_table:[I

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->hueArray:[I

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->satArray:[I

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->lumArray:[I

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->colorPickedArray:[I

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->pickerSize:I

    iget-boolean v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->isWB:Z

    iget v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->wb:I

    iget v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->blc:I

    invoke-direct/range {v0 .. v12}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;I[I[I[I[I[I[IIZII)V

    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->clone()Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;

    move-result-object v0

    return-object v0
.end method

.method fillData()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x4

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->stateId:I

    and-int/lit8 v1, v2, -0x10

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    new-array v2, v6, [I

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->modified:[I

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v6, :cond_2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mListOfCurveObjects:[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$1900(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;

    move-result-object v2

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mListOfCurveObjects:[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$1900(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;->getModifiedState()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->modified:[I

    aput v8, v2, v0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->modified:[I

    aput v7, v2, v0

    goto :goto_2

    :cond_2
    const/16 v2, 0x400

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->mapping_table:[I

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v6, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->modified:[I

    aget v2, v2, v0

    if-ne v2, v8, :cond_3

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mListOfCurveObjects:[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$1900(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;->getMappingTable()[I

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->mapping_table:[I

    mul-int/lit16 v4, v0, 0x100

    const/16 v5, 0x100

    invoke-static {v2, v7, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :sswitch_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mHueArray:[I
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$3200(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mHueArray:[I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$3200(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)[I

    move-result-object v3

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->hueArray:[I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mSatArray:[I
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$3300(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mSatArray:[I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$3300(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)[I

    move-result-object v3

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->satArray:[I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mLumArray:[I
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$3400(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mLumArray:[I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$3400(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)[I

    move-result-object v3

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->lumArray:[I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mColorPickerArray:[I
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$3500(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mColorPickerArray:[I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$3500(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)[I

    move-result-object v3

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->colorPickedArray:[I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mColorPickerArrayList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$3600(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->pickerSize:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mIsApplyBW:Z
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$2200(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->isWB:Z

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mBWValue:I
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$3700(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->wb:I

    goto/16 :goto_0

    :sswitch_2
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mBLC:I
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$3800(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->blc:I

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x90010 -> :sswitch_0
        0x90020 -> :sswitch_1
        0x90030 -> :sswitch_2
    .end sparse-switch
.end method

.method release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->modified:[I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->mapping_table:[I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->hueArray:[I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->satArray:[I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->lumArray:[I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$HistoryItem;->colorPickedArray:[I

    return-void
.end method
