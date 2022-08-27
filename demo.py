import pandas as pd
import streamlit as st
import numpy as np

st.set_page_config(page_title="BOOM",page_icon=":bar_chart:",layout="wide")
st.title(":bar_chart: BOOM")


chart_data = pd.DataFrame(
     np.random.randn(20, 3),
     columns=['a', 'b', 'c'])

st.area_chart(chart_data)

chart_data = pd.DataFrame(
     np.random.randn(20, 3),
     columns=['a', 'b', 'c'])

st.line_chart(chart_data)