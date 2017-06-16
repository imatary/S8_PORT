.class synthetic Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$4;
.super Ljava/lang/Object;
.source "CustomAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sec$android$mimage$photoretouching$agif$CustomAnimationController$TREND:[I

.field static final synthetic $SwitchMap$com$sec$android$mimage$photoretouching$agif$MotionPhotoActivity$DIRECTION:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;->values()[Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$4;->$SwitchMap$com$sec$android$mimage$photoretouching$agif$MotionPhotoActivity$DIRECTION:[I

    :try_start_0
    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$4;->$SwitchMap$com$sec$android$mimage$photoretouching$agif$MotionPhotoActivity$DIRECTION:[I

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;->Forward:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$4;->$SwitchMap$com$sec$android$mimage$photoretouching$agif$MotionPhotoActivity$DIRECTION:[I

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;->Backward:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$4;->$SwitchMap$com$sec$android$mimage$photoretouching$agif$MotionPhotoActivity$DIRECTION:[I

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;->Loop:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;->values()[Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$4;->$SwitchMap$com$sec$android$mimage$photoretouching$agif$CustomAnimationController$TREND:[I

    :try_start_3
    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$4;->$SwitchMap$com$sec$android$mimage$photoretouching$agif$CustomAnimationController$TREND:[I

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;->INCREASE:Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$4;->$SwitchMap$com$sec$android$mimage$photoretouching$agif$CustomAnimationController$TREND:[I

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;->DECREASE:Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method
