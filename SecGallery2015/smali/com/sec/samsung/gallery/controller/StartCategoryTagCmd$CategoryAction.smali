.class public final enum Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;
.super Ljava/lang/Enum;
.source "StartCategoryTagCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CategoryAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

.field public static final enum EDIT_PEOPLE_TAG:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

.field public static final enum EDIT_TAG:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

.field public static final enum REMOVE_ALBUM_TAG:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

.field public static final enum REMOVE_DETAIL_PEOPLE_TAG:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

.field public static final enum REMOVE_DETAIL_TAG:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

.field public static final enum REMOVE_PEOPLE_TAG:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

.field public static final enum REMOVE_PHOTO_TAG:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

.field public static final enum UPDATE_SCREEN_CAHNGE_CATEGORY:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

    const-string/jumbo v1, "REMOVE_ALBUM_TAG"

    invoke-direct {v0, v1, v3}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;->REMOVE_ALBUM_TAG:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

    new-instance v0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

    const-string/jumbo v1, "REMOVE_PHOTO_TAG"

    invoke-direct {v0, v1, v4}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;->REMOVE_PHOTO_TAG:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

    new-instance v0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

    const-string/jumbo v1, "REMOVE_DETAIL_TAG"

    invoke-direct {v0, v1, v5}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;->REMOVE_DETAIL_TAG:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

    new-instance v0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

    const-string/jumbo v1, "REMOVE_DETAIL_PEOPLE_TAG"

    invoke-direct {v0, v1, v6}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;->REMOVE_DETAIL_PEOPLE_TAG:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

    new-instance v0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

    const-string/jumbo v1, "REMOVE_PEOPLE_TAG"

    invoke-direct {v0, v1, v7}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;->REMOVE_PEOPLE_TAG:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

    new-instance v0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

    const-string/jumbo v1, "EDIT_TAG"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;->EDIT_TAG:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

    new-instance v0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

    const-string/jumbo v1, "EDIT_PEOPLE_TAG"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;->EDIT_PEOPLE_TAG:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

    new-instance v0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

    const-string/jumbo v1, "UPDATE_SCREEN_CAHNGE_CATEGORY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;->UPDATE_SCREEN_CAHNGE_CATEGORY:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

    sget-object v1, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;->REMOVE_ALBUM_TAG:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;->REMOVE_PHOTO_TAG:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;->REMOVE_DETAIL_TAG:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;->REMOVE_DETAIL_PEOPLE_TAG:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;->REMOVE_PEOPLE_TAG:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;->EDIT_TAG:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;->EDIT_PEOPLE_TAG:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;->UPDATE_SCREEN_CAHNGE_CATEGORY:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;->$VALUES:[Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;
    .locals 1

    const-class v0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

    return-object v0
.end method

.method public static values()[Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;->$VALUES:[Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

    invoke-virtual {v0}, [Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

    return-object v0
.end method
