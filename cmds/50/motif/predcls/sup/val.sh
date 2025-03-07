OUTPATH=$EXP/50/motif/predcls/sup/sup # replace with your own directory

#cd $SG
CUDA_VISIBLE_DEVICES=0 python \
        tools/relation_test_net.py --config-file "configs/sup-50.yaml" \
        MODEL.ROI_RELATION_HEAD.USE_GT_BOX True MODEL.ROI_RELATION_HEAD.USE_GT_OBJECT_LABEL True \
        MODEL.ROI_RELATION_HEAD.PREDICTOR MotifPredictor \
        TEST.IMS_PER_BATCH 1 DTYPE "float16" GLOVE_DIR $EXP/glove \
        MODEL.PRETRAINED_DETECTOR_CKPT $OUTPATH OUTPUT_DIR $OUTPATH
