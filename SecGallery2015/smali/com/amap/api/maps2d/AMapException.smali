.class public Lcom/amap/api/maps2d/AMapException;
.super Ljava/lang/Exception;
.source "AMapException.java"


# static fields
.field public static AMAP_NOT_SUPPORT:Ljava/lang/String;

.field public static AMAP_NOT_SUPPORT_NAVI:Ljava/lang/String;

.field public static ILLEGAL_AMAP_ARGUMENT:Ljava/lang/String;

.field public static ILLEGAL_NAVI_ARGUMENT:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "\u79fb\u52a8\u8bbe\u5907\u4e0a\u672a\u5b89\u88c5\u9ad8\u5fb7\u5730\u56fe\u6216\u9ad8\u5fb7\u5730\u56fe\u7248\u672c\u8f83\u65e7"

    sput-object v0, Lcom/amap/api/maps2d/AMapException;->AMAP_NOT_SUPPORT_NAVI:Ljava/lang/String;

    const-string/jumbo v0, "\u79fb\u52a8\u8bbe\u5907\u4e0a\u672a\u5b89\u88c5\u9ad8\u5fb7\u5730\u56fe\u6216\u9ad8\u5fb7\u5730\u56fe\u7248\u672c\u8f83\u65e7"

    sput-object v0, Lcom/amap/api/maps2d/AMapException;->AMAP_NOT_SUPPORT:Ljava/lang/String;

    const-string/jumbo v0, "\u975e\u6cd5\u5bfc\u822a\u53c2\u6570"

    sput-object v0, Lcom/amap/api/maps2d/AMapException;->ILLEGAL_AMAP_ARGUMENT:Ljava/lang/String;

    const-string/jumbo v0, "\u975e\u6cd5\u5bfc\u822a\u53c2\u6570"

    sput-object v0, Lcom/amap/api/maps2d/AMapException;->ILLEGAL_NAVI_ARGUMENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const-string/jumbo v0, "\u672a\u77e5\u7684\u9519\u8bef"

    iput-object v0, p0, Lcom/amap/api/maps2d/AMapException;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const-string/jumbo v0, "\u672a\u77e5\u7684\u9519\u8bef"

    iput-object v0, p0, Lcom/amap/api/maps2d/AMapException;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/amap/api/maps2d/AMapException;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps2d/AMapException;->a:Ljava/lang/String;

    return-object v0
.end method
