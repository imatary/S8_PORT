.class synthetic Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$51;
.super Ljava/lang/Object;
.source "MotionPhotoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sec$android$mimage$photoretouching$agif$CustomAnimationController$TREND:[I

.field static final synthetic $SwitchMap$com$sec$android$mimage$photoretouching$agif$MotionPhotoActivity$DIALOG_TYPE:[I

.field static final synthetic $SwitchMap$com$sec$android$mimage$photoretouching$agif$MotionPhotoActivity$DIRECTION:[I

.field static final synthetic $SwitchMap$com$sec$android$mimage$photoretouching$agif$MotionPhotoActivity$SPEED:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;->values()[Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$51;->$SwitchMap$com$sec$android$mimage$photoretouching$agif$MotionPhotoActivity$SPEED:[I

    :try_start_0
    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$51;->$SwitchMap$com$sec$android$mimage$photoretouching$agif$MotionPhotoActivity$SPEED:[I

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;->TwoX:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_c

    :goto_0
    :try_start_1
    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$51;->$SwitchMap$com$sec$android$mimage$photoretouching$agif$MotionPhotoActivity$SPEED:[I

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;->FiveX:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_b

    :goto_1
    :try_start_2
    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$51;->$SwitchMap$com$sec$android$mimage$photoretouching$agif$MotionPhotoActivity$SPEED:[I

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;->TenX:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_a

    :goto_2
    :try_start_3
    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$51;->$SwitchMap$com$sec$android$mimage$photoretouching$agif$MotionPhotoActivity$SPEED:[I

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;->HalfX:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_9

    :goto_3
    :try_start_4
    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$51;->$SwitchMap$com$sec$android$mimage$photoretouching$agif$MotionPhotoActivity$SPEED:[I

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;->TwentyX:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_8

    :goto_4
    :try_start_5
    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$51;->$SwitchMap$com$sec$android$mimage$photoretouching$agif$MotionPhotoActivity$SPEED:[I

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;->ThirtyX:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_7

    :goto_5
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;->values()[Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$51;->$SwitchMap$com$sec$android$mimage$photoretouching$agif$MotionPhotoActivity$DIRECTION:[I

    :try_start_6
    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$51;->$SwitchMap$com$sec$android$mimage$photoretouching$agif$MotionPhotoActivity$DIRECTION:[I

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;->Forward:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :goto_6
    :try_start_7
    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$51;->$SwitchMap$com$sec$android$mimage$photoretouching$agif$MotionPhotoActivity$DIRECTION:[I

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;->Backward:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_5

    :goto_7
    :try_start_8
    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$51;->$SwitchMap$com$sec$android$mimage$photoretouching$agif$MotionPhotoActivity$DIRECTION:[I

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;->Loop:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_4

    :goto_8
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;->values()[Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$51;->$SwitchMap$com$sec$android$mimage$photoretouching$agif$CustomAnimationController$TREND:[I

    :try_start_9
    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$51;->$SwitchMap$com$sec$android$mimage$photoretouching$agif$CustomAnimationController$TREND:[I

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;->INCREASE:Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_3

    :goto_9
    :try_start_a
    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$51;->$SwitchMap$com$sec$android$mimage$photoretouching$agif$CustomAnimationController$TREND:[I

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;->DECREASE:Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_2

    :goto_a
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;->values()[Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$51;->$SwitchMap$com$sec$android$mimage$photoretouching$agif$MotionPhotoActivity$DIALOG_TYPE:[I

    :try_start_b
    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$51;->$SwitchMap$com$sec$android$mimage$photoretouching$agif$MotionPhotoActivity$DIALOG_TYPE:[I

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;->SAVE_DIALOG:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_1

    :goto_b
    :try_start_c
    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$51;->$SwitchMap$com$sec$android$mimage$photoretouching$agif$MotionPhotoActivity$DIALOG_TYPE:[I

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;->RETURN_DIALOG:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_0

    :goto_c
    return-void

    :catch_0
    move-exception v0

    goto :goto_c

    :catch_1
    move-exception v0

    goto :goto_b

    :catch_2
    move-exception v0

    goto :goto_a

    :catch_3
    move-exception v0

    goto :goto_9

    :catch_4
    move-exception v0

    goto :goto_8

    :catch_5
    move-exception v0

    goto :goto_7

    :catch_6
    move-exception v0

    goto :goto_6

    :catch_7
    move-exception v0

    goto :goto_5

    :catch_8
    move-exception v0

    goto/16 :goto_4

    :catch_9
    move-exception v0

    goto/16 :goto_3

    :catch_a
    move-exception v0

    goto/16 :goto_2

    :catch_b
    move-exception v0

    goto/16 :goto_1

    :catch_c
    move-exception v0

    goto/16 :goto_0
.end method
