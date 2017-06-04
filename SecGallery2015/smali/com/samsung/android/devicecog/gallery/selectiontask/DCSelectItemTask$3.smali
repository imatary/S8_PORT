.class synthetic Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$3;
.super Ljava/lang/Object;
.source "DCSelectItemTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$samsung$android$devicecog$gallery$selectiontask$DCSelectItemTask$JobType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;->values()[Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$3;->$SwitchMap$com$samsung$android$devicecog$gallery$selectiontask$DCSelectItemTask$JobType:[I

    :try_start_0
    sget-object v0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$3;->$SwitchMap$com$samsung$android$devicecog$gallery$selectiontask$DCSelectItemTask$JobType:[I

    sget-object v1, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;->TYPE_SELECT_ITEM:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$3;->$SwitchMap$com$samsung$android$devicecog$gallery$selectiontask$DCSelectItemTask$JobType:[I

    sget-object v1, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;->TYPE_SELECT_ALL_WITH_PARAMETER:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$3;->$SwitchMap$com$samsung$android$devicecog$gallery$selectiontask$DCSelectItemTask$JobType:[I

    sget-object v1, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;->TYPE_ENTER_DETAIL_VIEW:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
