.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$12;
.super Ljava/lang/Object;
.source "GlComposeView.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$12;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenericMotionCancel(Lcom/sec/android/gallery3d/glcore/GlObject;)Z
    .locals 4

    const/4 v3, 0x1

    move-object v0, p1

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mObjective:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$12;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnGenericMotionListener:[Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$12;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnGenericMotionListener:[Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;->onGenericMotionCancel()V

    :cond_0
    return v3

    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public onGenericMotionEnter(Lcom/sec/android/gallery3d/glcore/GlObject;II)Z
    .locals 12

    const/4 v6, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    move-object v0, p1

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mObjective:I

    const/4 v10, 0x7

    if-ne v9, v10, :cond_b

    const/4 v5, 0x1

    :goto_0
    if-eqz v5, :cond_0

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$12;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsAlbumView:Z

    if-eqz v9, :cond_f

    if-ne v5, v6, :cond_f

    :cond_0
    iget v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    :goto_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$12;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$2700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$12;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$2700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/glcore/GlObject;->setBorderVisible(Z)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$12;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v6, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$2702(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject;

    :cond_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$12;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$2800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$12;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$2800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/glcore/GlObject;->setBorderVisible(Z)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$12;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v6, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$2802(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject;

    :cond_2
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$12;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$12;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->getFocusedTimeLinObj()Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$12;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->getFocusedTimeLinObj()Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/glcore/GlObject;->setBorderVisible(Z)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$12;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    invoke-virtual {v6, v11}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->setFocusedTimeLinObj(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    :cond_3
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$12;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$12;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    if-ne v6, p1, :cond_10

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$12;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    invoke-virtual {v6, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->drawTotalFocusBorder(Z)V

    :goto_2
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$12;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->drawDeleteFocusBorder(Z)V

    :cond_4
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$12;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$2900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$12;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$2900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    move-result-object v6

    if-ne v6, p1, :cond_11

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$12;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$2900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->drawTotalFocusBorder(Z)V

    :goto_3
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$12;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$2900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->drawCancelFocusBorder(Z)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$12;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$2900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->drawLaterBtnFocusBorder(Z)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$12;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$2900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->drawDoneFocusBorder(Z)V

    :cond_5
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$12;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getMoreAlbumDivider()Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-result-object v2

    if-eqz v2, :cond_6

    if-ne v2, p1, :cond_12

    move v6, v8

    :goto_4
    invoke-virtual {v2, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->drawFocusBorder(Z)V

    :cond_6
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$12;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$3000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$12;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$3000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;

    move-result-object v6

    if-ne v6, p1, :cond_13

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$12;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$3000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->drawFocusBorder(Z)V

    :cond_7
    :goto_5
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$12;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getRecycleBinTextObject()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v4

    if-eqz v4, :cond_8

    if-ne v4, p1, :cond_14

    move v6, v8

    :goto_6
    invoke-virtual {v4, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->drawBorder(Z)V

    :cond_8
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$12;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mThis:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;

    instance-of v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$12;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mThis:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;

    check-cast v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getFocusedSuggestionCardObj()Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v3

    if-eqz v3, :cond_9

    const-string/jumbo v6, "GlComposeView"

    const-string/jumbo v9, "GlGenericMotionListener: SuggestionCard border removed"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v7}, Lcom/sec/android/gallery3d/glcore/GlObject;->setBorderVisible(Z)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$12;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mThis:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;

    check-cast v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v6, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->setFocusedSuggestionCardObj(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    :cond_9
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$12;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnGenericMotionListener:[Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;

    aget-object v6, v6, v5

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$12;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnGenericMotionListener:[Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;

    aget-object v6, v6, v5

    invoke-interface {v6, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;->onGenericMotionEnter(I)V

    :cond_a
    return v8

    :cond_b
    iget v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mObjective:I

    const/16 v10, 0x8

    if-eq v9, v10, :cond_c

    iget v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mObjective:I

    const/4 v10, 0x6

    if-eq v9, v10, :cond_c

    iget v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mObjective:I

    const/16 v10, 0xc

    if-ne v9, v10, :cond_d

    :cond_c
    const/4 v5, 0x3

    goto/16 :goto_0

    :cond_d
    iget v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mObjective:I

    if-ne v9, v8, :cond_e

    move v5, v7

    :goto_7
    goto/16 :goto_0

    :cond_e
    move v5, v6

    goto :goto_7

    :cond_f
    iget v6, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v1

    goto/16 :goto_1

    :cond_10
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$12;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->drawTotalFocusBorder(Z)V

    goto/16 :goto_2

    :cond_11
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$12;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$2900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->drawTotalFocusBorder(Z)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$12;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->removeBorderFromTipCardObjs()V

    goto/16 :goto_3

    :cond_12
    move v6, v7

    goto/16 :goto_4

    :cond_13
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$12;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$3000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->drawFocusBorder(Z)V

    goto/16 :goto_5

    :cond_14
    move v6, v7

    goto/16 :goto_6
.end method
