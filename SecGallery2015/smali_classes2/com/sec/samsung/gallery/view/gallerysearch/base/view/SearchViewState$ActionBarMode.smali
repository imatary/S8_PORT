.class public final enum Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;
.super Ljava/lang/Enum;
.source "SearchViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "ActionBarMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;

.field public static final enum EDIT:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;

.field public static final enum NORMAL:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;->NORMAL:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;

    const-string/jumbo v1, "EDIT"

    invoke-direct {v0, v1, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;->EDIT:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;

    sget-object v1, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;->NORMAL:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;->EDIT:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;->$VALUES:[Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;
    .locals 1

    const-class v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;

    return-object v0
.end method

.method public static values()[Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;->$VALUES:[Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;

    invoke-virtual {v0}, [Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;

    return-object v0
.end method
