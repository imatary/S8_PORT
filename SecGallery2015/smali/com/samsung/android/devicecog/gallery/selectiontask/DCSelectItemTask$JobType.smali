.class public final enum Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;
.super Ljava/lang/Enum;
.source "DCSelectItemTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JobType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

.field public static final enum TYPE_ENTER_ALBUM_THUMBNAILS_VIEW:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

.field public static final enum TYPE_ENTER_DETAIL_VIEW:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

.field public static final enum TYPE_ENTER_STORY_DETAIL_VIEW:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

.field public static final enum TYPE_NONE:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

.field public static final enum TYPE_SELECT_ALL_WITH_PARAMETER:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

.field public static final enum TYPE_SELECT_ITEM:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    const-string/jumbo v1, "TYPE_NONE"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;->TYPE_NONE:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    new-instance v0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    const-string/jumbo v1, "TYPE_SELECT_ITEM"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;->TYPE_SELECT_ITEM:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    new-instance v0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    const-string/jumbo v1, "TYPE_SELECT_ALL_WITH_PARAMETER"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;->TYPE_SELECT_ALL_WITH_PARAMETER:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    new-instance v0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    const-string/jumbo v1, "TYPE_ENTER_DETAIL_VIEW"

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;->TYPE_ENTER_DETAIL_VIEW:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    new-instance v0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    const-string/jumbo v1, "TYPE_ENTER_ALBUM_THUMBNAILS_VIEW"

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;->TYPE_ENTER_ALBUM_THUMBNAILS_VIEW:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    new-instance v0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    const-string/jumbo v1, "TYPE_ENTER_STORY_DETAIL_VIEW"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;->TYPE_ENTER_STORY_DETAIL_VIEW:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;->TYPE_NONE:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;->TYPE_SELECT_ITEM:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;->TYPE_SELECT_ALL_WITH_PARAMETER:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;->TYPE_ENTER_DETAIL_VIEW:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;->TYPE_ENTER_ALBUM_THUMBNAILS_VIEW:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;->TYPE_ENTER_STORY_DETAIL_VIEW:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;->$VALUES:[Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;
    .locals 1

    const-class v0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;
    .locals 1

    sget-object v0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;->$VALUES:[Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    invoke-virtual {v0}, [Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    return-object v0
.end method
