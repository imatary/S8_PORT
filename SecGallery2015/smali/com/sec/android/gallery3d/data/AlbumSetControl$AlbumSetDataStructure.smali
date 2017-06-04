.class public Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumSetDataStructure;
.super Ljava/lang/Object;
.source "AlbumSetControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/AlbumSetControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AlbumSetDataStructure"
.end annotation


# instance fields
.field private mBucketId:I

.field private mFeatureValue:Z

.field private mIsFeature:Z

.field private mType:Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

.field final synthetic this$0:Lcom/sec/android/gallery3d/data/AlbumSetControl;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/data/AlbumSetControl;ZZILcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumSetDataStructure;->this$0:Lcom/sec/android/gallery3d/data/AlbumSetControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumSetDataStructure;->mIsFeature:Z

    iput-boolean p3, p0, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumSetDataStructure;->mFeatureValue:Z

    iput p4, p0, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumSetDataStructure;->mBucketId:I

    iput-object p5, p0, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumSetDataStructure;->mType:Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

    return-void
.end method


# virtual methods
.method public getAlbumType()Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumSetDataStructure;->mType:Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

    return-object v0
.end method

.method public getBucketId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumSetDataStructure;->mBucketId:I

    return v0
.end method

.method public getFeatureValue()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumSetDataStructure;->mFeatureValue:Z

    return v0
.end method

.method public isFeature()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumSetDataStructure;->mIsFeature:Z

    return v0
.end method
