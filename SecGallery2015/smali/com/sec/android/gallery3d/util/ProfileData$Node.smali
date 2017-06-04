.class Lcom/sec/android/gallery3d/util/ProfileData$Node;
.super Ljava/lang/Object;
.source "ProfileData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/util/ProfileData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Node"
.end annotation


# instance fields
.field public children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/util/ProfileData$Node;",
            ">;"
        }
    .end annotation
.end field

.field public final id:I

.field public final parent:Lcom/sec/android/gallery3d/util/ProfileData$Node;

.field public sampleCount:I


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/util/ProfileData$Node;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/util/ProfileData$Node;->parent:Lcom/sec/android/gallery3d/util/ProfileData$Node;

    iput p2, p0, Lcom/sec/android/gallery3d/util/ProfileData$Node;->id:I

    return-void
.end method
